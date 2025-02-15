## Beta 2 Front End Rework

Remove the covers on the front end shielding cans, repeat the steps below for each channel.

![Screenshot of 3D View of Beta 2 Front End, C30 Labeled With "1", C26 Labeled With "2"](https://github.com/EEVengers/ThunderScope/blob/master/Docs/Beta%202%20Front%20End%20Rework.PNG)

1. Replace "1" with a 220pF 50V COG 0402 Capacitor (GCM1555C1H221FA16D), this will flatten the crossover response and eliminate peaking for square waves under ~100kHz.
   - [Check out this video for an explaination](https://youtu.be/EY9enxyHi5o)
2. Replace "2" with a 1.2nF 100V C0G 0603 Capacitor (GCM1885C2A122FA16D), this will increase the frequency for which the maximum 100Vpp input voltage rating applies.
   - [Check out this video for an explaination](https://youtu.be/33C-LlOQOUs)
3. Replace "3" with a 50Ω 0402 Resistor, this will eliminate peaking past 300 MHz in the frequency response
   - [Check out this video for an explaination](https://youtu.be/Orcwj9rat1I) 

## Beta 2 Noise Improvement 1

In the middle of the board above the fpga module and to the left side of the ADC, locate the buck regulator:

![Screenshot of 3D View of Beta 2 1V92 buck regulator, R36 Labeled With "1", and added caps drawn in to ground on either side of R36 labeled "2" and "3"](https://github.com/EEVengers/ThunderScope/blob/master/Docs/Beta%202%20Noise%20Rework%201.PNG)

1. Replace "1" with a 120@100MHZ 0402 ferrite bead (BLM15PX121SN1D), leaving room on the left side for 3.
2. Add a 22uF 25V X5R 0805 capacitor (GRM21BR61E226ME44L) across the input cap in position "2"
3. Add a 22uF 25V X5R 0805 capacitor (GRM21BR61E226ME44L) on the left side of "1", in postition "3". Make sure to scrape off the soldermask to make a ground pad for this cap (shown in black)

This should bring the noise to the level shown below:

![Screenshot of ngscopeclient, showing 77.5 uV of rms noise with 2.89 mV of peak to peak noise on CH1 at most sensitive settings](https://github.com/EEVengers/ThunderScope/blob/master/Docs/Beta%202%20Noise%20Rework%201%20Result.PNG)

## Beta 2 Noise Improvement 2

This one is a bit harder, but it will get rid of the spikes and bring the peak to peak noise closer to expectation. Locate the probe compensation buffer on upper right corner of the secondary side of the board (the side opposite all the big components):

![Screenshot of 3D View of Beta 2 probe compensation buffer, the buffer has a green "X" over it and the power trace coming from a via has a red line through it next to a "1", indicating the trace should be cut. There is a cap labelled "2" that goes to a black scribbled out ground pad, indicating the soldermask must be removed. Finally there is a ferrite bead labelled "3" going across the cut in the trace.](https://github.com/EEVengers/ThunderScope/blob/master/Docs/Beta%202%20Noise%20Rework%202.PNG)

If you are willing to give up the probe compensation output, you can simply remove the buffer (green "X"). Else steady your hand and get your scalpel ready!

1. Cut the trace going from the via to the decoupling cap (red line labelled "1")
2. Add a 1uF 25V X5R 0402 capacitor (GRM155R61E105KA12D) in postition "2". Make sure to scrape off the soldermask to make a ground pad for this cap (shown in black)
3. Solder a 120@100MHZ 0402 ferrite bead (BLM15PX121SN1D) between cap "2" and the existing decoupling cap, making sure not to short the connection (which would bypass the ferrite bead)

This should bring the noise to the level shown below:

![Screenshot of ngscopeclient, showing 73.8 uV of rms noise with 0.95 mV of peak to peak noise on CH1 at most sensitive settings](https://github.com/EEVengers/ThunderScope/blob/master/Docs/Beta%202%20Noise%20Rework%202%20Result.PNG)

## Beta 2 Noise Improvement 3

You barely pierced the ~~skin~~ soldermask on these last ones, now we've got to do some serious PCB surgery.

![Photo of this rework done on a Beta 2](https://github.com/EEVengers/ThunderScope/blob/master/Docs/Beta%202%20Noise%20Rework%203%20Photo.jpg)

Let's break this done layer by layer:

![Screenshot of 3D View, as well as Layer 6,5,4 copper in the area of this rework](https://github.com/EEVengers/ThunderScope/blob/master/Docs/Beta%202%20Noise%20Rework%203.PNG)

1. Remove soldermask in the area - this should give you a clear view of the copper (and lack of it) on layer 6
2. Scrap off the copper and fiberglass prepreg (wear a dust mask for this!) in the red area of the layer 6 image
3. Scrap off the layer 5 copper, then prepreg, in the red area of the layer 5 image, leaving copper in the purple area
4. By this point you should be able to see your target - cut the 3V3 plane at the red line on the layer 4 image
5. Solder a 120@100MHZ 0402 ferrite bead (BLM15PX121SN1D) between the planes you split with the cut, making sure not to short the connection (which would bypass the ferrite bead)
6. Solder a 22uF 25V X5R 0805 capacitor (GRM21BR61E226ME44L) between each side of the ferrite bead and the ground pads you left from step 3. (was purple in that step, now shown in green)
7. Check to see if you shorted 3V3 to ground - If you did, clear out the edges of the hole in the plane and try again

Now doff your scrubs and fix yourself a drink to celebrate another successful operation, your noise level should now be under 60 uV RMS!

![Screenshot of ngscopeclient, showing 51.3 uV of rms noise on CH1 at most sensitive settings](https://github.com/EEVengers/ThunderScope/blob/master/Docs/Beta%202%20Noise%20Rework%203%20Result.PNG)
