# Scope Link

## Setup

You will need to download and install the D3XX ftdi drivers
* They can be found on the [ftdi website](https://www.ftdichip.com/Drivers/D3XX.htm).
    * Extract the files to the correct locations
    * Run the following commands
```
sudo cp libftd3xx.so /usr/lib/
sudo cp libftd3xx.so.0.5.21 /usr/lib/
sudo cp 51-ftd3xx.rules /etc/udev/rules.d/
sudo udevadm control --reload-rules
```

## Running

Only 2 command line arguments are implemented currently

### Test Sinc Interpolation
Not quite sure what this does yet
```
./scope --TestSync
```

### Test Data Throughput
Not quite sure what this does yet either
```
./scope --TestDataThrougput
```

## test1
Takes a csv input (or defaults to test1.csv) and runs it through the pipeline.
It will treat the csv as a continuous stream of samples and generate triggers,
outputing a dump.csv file containing the triggered data.

### test1.csv
Tests that triggers can be found in multiple buffers. Does this by having a
count from 0 to 255, then 31 * 256 0s in a row to push the next 0 - 255 count
into the next buffer.

### test2.csv
Tests that the correct positing within a 64 bit space is computed. Does this by
having 2 triggers right next to eachother.

Pass condition is if the first one is captured, but the second is ignored.

### test3.csv
Tests a window can be filled if parts of it are in different buffers.

This is done by putting a trigger within window size of the the end of a buffer.

### test4.csv
Shows what happens numbers outside of the bounds are passed into a buffer. This
isn't a expected use case. The hardware should give proper numbers but spoofing
values from a csv should be within expeced range of -128 to 127.

### test5.csv
Tests triggers on the boundry between buffers. The trigger should be caught by
the first buffer and finish filling from the second.

This is done by filling the first buffer with all 0's and the first sample from
the second buffer with a value above the trigger level. This generate a rising
edge trigger right on the buffer boundry.

## Triggering and Post Processing plan
The pipeline through the C++ side of things is broken up into several stages.
These stages are:

1. Transfer handler
2. Triggering
3. Post Processing

### Transfer Handler
The transfer handler will be a loop accepting data from the pcie/thunderbolt
connection. It will take transfers in batches of `BUFFER_SIZE` and will need to
keep track of the previous buffer's last sample and add it to the next buffer.
This allows triggers between buffers to be also captured. Will have to think
how this affects the post-processor.

The buffers that this method gets are pushed onto a fifo lock free queue. I
still need to look at making these into spsc (single producer single consumer)
instead of the spmc (single producer multiple consumer) now that we are only
doing single threaded processing (because each channel would need a thread and
each stage in the pipeline multiplies the number of threads.)

### Triggering
The trigger loop will pop a buffer from its input queue and compute all triggers
in it, including the additional edge position between the current buffer and the
one before it.

It computes the trigger with bitshifting. Each buffer is processed in 64 sample
segments (more work can be done to try larger segments, but `uint64_t` was
already available as a data type). Its computed by running a large bit shifting
opperation where each trigger position is computed, shifted, and then ORed with
the rest of the triggers in the segment.

Once the triggers are computed, they are passed to a post-processing with the
buffer for those respective triggers. No work is done beyond checking for
triggers in this stage.

### Post Processing
This stage will be more complex than the previous stages. It needs to hold a
persistance buffer. The persistance buffer will be a 2D array of processed
samples. This can be later expanded to store unprocessed samples allowing the
user to re-process a set of waveforms, but the basic implementation doesn't 
need this feature.

The core loop will pop a buffer from its input queue, find the earliest trigger
for the buffer and begin copying and processing samples from that point into
the persistance buffer.

When a new trigger is found, it will take up a new row in the persistance array
and begin copying in samples. Because a waveform can extend beyond the boundry
of a single buffer (but will only include at most 2 buffers), the position of
the most recent data added to a row will also need to be stored. When the next
buffer arrives, the samples are coppied to incomplete waveform windows and
additional triggers are checked for.

A single data point will only appear in at most one window. If we say that there
must be up to 64 samples before the next window can start, we can ignore
checking the trigger `uint64_t` that the last sample in the window belongs to.

Once a window is filled it can be pushed off to the graphing library or the
graphing library can request all completed waveforms.

TODO: I will need to check if it is faster to process the whole buffer or only
the parts that we need. This depends on how simd reacts to variable start and
end points within an array.

TODO: Also look into if its faster to always take the hit on duplicating a full
window of samples onto the prevous buffer or if its faster to post process 
partial buffers. It may be harder to do more advanced interpolation without the
full window available. The question here comes down to if its faster to always
loose time copying samples or to sometimes have to do a partial interpolation.
If the compiler cant optomize it well enough, it may be better to take the hit
on every run.

Also going to need a way to update the size of the persistance memory. This
will need to use new and delete to dynamically create space, but this will be
done only when we have stopped capturing data. The number of rows is equal to
the number of persistant waveforms and the number of samples is equal to the
window size.

#### Steps
1. Create persistance memory
    1. make set and get WindowSize functions
    2. make set and get persistance number functions
    3. make create and destroy functions
2. pop and store windowSize samples in persistance
3. write persisance to file
4. Graph that with GNUPlot
5. Add trigger checking on new window (ignore the unfiled spaces)
6. Add incomplete window filling


### Graphing Handler
This stage will be responsible for handling C++ side of the graphing. It will
take in requests for samples and return the window of available samples

## Thoughts on Future Improvements
### Pre caim space in output queue
This would allow us to multithread more easily without thinking about keeping
buffers in the correct order. Basically its a problem if we have the buffers
finishing in the wrong order, causing out data to be out of order.

This wont help us before triggering, only after it. This is because we dont know
if the data is usable or not and it would be extra overhead to un-claim the
space.

Ultimately, There is only so much threading that can happen. We need to be able
to handle 4 channels of data at a time. A dual core system would only really be
albe to handle 4 threads. Usually you estimate 1 thread per core available....

### Data Compression
This would be hard to compress and de-compress quickly. If done correctly we
could acieve higher sample rates. Lots of optomizations needed before that.
Not sure if the hardware could support it though. Our sample rate might be
fixed.

### Bypassing Triggering
Once the trigger is met, the whole triggering stage can be bypassed.
Unfortunately, this is harder to do because the trigger queue is already partly
filled.

Alternativly, we could pass the same queue to both stages of the pipeline and
just flag the post-processing stage to start pulling from the queue.

For waveform persistance, this isn't really an option as we still need to trigger
on the incomming data until the whole persistance buffer is filled, at which point
we can stop processing data all together.

### Signaling when adding to queue
The overhead of a mutex might not be worth it. Will need to do analysis on
how much time you save by interrupting a sleep vs the end to end added latency.
This largely depends on where the bottle nect is in our pipeline.

I suspect that after the first item added to the queue, the triggering stage
and once a trigger is found, the post-processing stage, are going to be the
bottleneck. Once one item is pulled from the queue, if it takes longer to
process than to get the next item, then there is no benifit of this.

Also, not only signal when the queue is empty. If its not empty, processors
are already working and signaling is useless to do.

## Some Math Stuff
transferRate = 1 GiBps
windowSize = variable S = 1 S
bufferSize = 8 KiB/buffer
pointsPerDiv = 500
numDivisions = 10
interpolationFactor

numBuffers = transferRate * windowSize / bufferSize
           = (1 GiBps * 1 S) / 8 KiB
           = (1 * 1024^2)/8 = 131072 buffers

points = pointsPerDiv * numDivisions
       = 500 * 10
       = 5000


