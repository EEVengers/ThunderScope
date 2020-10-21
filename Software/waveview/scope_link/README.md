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


