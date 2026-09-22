.. _Acquisition-Controls:

Acquisition Controls
====================

This guide assumes you have installed the driver and software for ThunderScope. 
If you have not already done do, please follow the :ref:`getting started guide <Getting-Started>`.

Sample Rate
-----------

To change the sample rate, click on the down arrow next to "Sample Rate" on the stream browser menu

.. image:: ./_images/ngscopeclient-sample-rate-1.webp
    :alt: TODO

Then click on the desired sample rate from the drop down menu

.. image:: ./_images/ngscopeclient-sample-rate-2.webp
    :alt: TODO

Note that lowering sample rate will increase capture length for a given memory depth and vice versa

.. image:: ./_images/ngscopeclient-sample-rate-3.webp
    :alt: TODO


Changing sample rate can have a drastic effect on the captured waveform due to `Nyquist's Theorem <https://en.wikipedia.org/wiki/Nyquist%E2%80%93Shannon_sampling_theorem>`_.
Shown below is the a 10 MHz square wave captured at decreasing sample rates, starting with 1 GS/s:

.. image:: ./_images/ngscopeclient-sample-rate-nyquist-1.webp
    :alt: TODO

500 MS/s:

.. image:: ./_images/ngscopeclient-sample-rate-nyquist-3.webp
    :alt: TODO

250 MS/s:

.. image:: ./_images/ngscopeclient-sample-rate-nyquist-4.webp
    :alt: TODO

100 MS/s:

.. image:: ./_images/ngscopeclient-sample-rate-nyquist-5.webp
    :alt: TODO

.. note::
    The effect shown above is compounded by the straight line interpolation used by ngscopeclient, 
    you can use the Upsample filter to get a more typical sine x/x interpolation. 
    For more on this, check out the :ref:`Introduction to Filters <Filter-Intro>` page.

Memory Depth
------------

To change the per channel memory depth, click on the down arrow next to "Sample Rate" on the stream browser menu

.. image:: ./_images/ngscopeclient-memory-depth-1.webp
    :alt: TODO

Then click on the desired memory depth from the drop down menu

.. image:: ./_images/ngscopeclient-memory-depth-2.webp
    :alt: TODO

Note that increasing the memory depth will increase capture length and vice versa.

.. image:: ./_images/ngscopeclient-memory-depth-3.webp
    :alt: TODO


The default maximum memory depth is set to 50 MS. This is about the limit for hosts with low end GPUs, such as intel iGPUs.
If you have a more capable host, you can change the ``MaxCaptureLength`` value in ``settings.yaml``, located in the follow directory:

.. tab:: Linux

    .. code::

        $XDG_CONFIG_HOME/ThunderScope/TS.NET.Engine/settings.yaml
        
    or

    .. code::

        $HOME/.config/ThunderScope/TS.NET.Engine/settings.yaml

.. tab:: Windows

    .. code::

        %AppData%\Local\ThunderScope\TS.NET.Engine

.. tab:: macOS

    .. code::

        ~/Library/Application Support/ThunderScope/TS.NET.Engine/settings.yaml


ADC Resolution
--------------

To change the ADC Resolution, click on the down arrow next to "ADC mode" on the stream browser menu

.. image:: ./_images/ngscopeclient-resolution-1.webp
    :alt: TODO

Then click on the desired ADC Resolution from the drop down menu

.. image:: ./_images/ngscopeclient-resolution-2.webp
    :alt: TODO

Note that when switched to 12-bit mode the stair step effect is no longer visible on the waveform 

.. image:: ./_images/ngscopeclient-resolution-3.webp
    :alt: TODO

Active Channels Vs. Max. Sample Rate - 8 Bit
--------------------------------------------

The ADC used on ThunderScope splits its sample rate between channels. 
Therefore adding or removing channels will change the maximum sample rate.
This may not align with the amount of channels that are displayed, 
as a channel may still be active for triggering or being used as an input to a filter.

The maximum sample rate for a single active channel in 8 bit mode is 1 GS/s.

.. image:: ./_images/ngscopeclient-max-sample-rate-8bit-1CH.webp
    :alt: TODO

The maximum sample rate for two active channels in 8 bit mode is 500 MS/s. Note that the capture length increases on both channels.
This is because the memory depth setting is per channel memory depth, and has not changed, while the sample rate has decreased. 

.. image:: ./_images/ngscopeclient-max-sample-rate-8bit-2CH.webp
    :alt: TODO

The maximum sample rate for three or four active channels in 8 bit mode is 250 MS/s. 
Note that capture length doubles again for the reason described previously. 

.. image:: ./_images/ngscopeclient-max-sample-rate-8bit-4CH.webp
    :alt: TODO

Active Channels Vs. Max. Sample Rate - 12 Bit
---------------------------------------------

The maximum sample rate for a single active channel in 12 bit mode is 660 MS/s.

.. image:: ./_images/ngscopeclient-max-sample-rate-12bit-1CH.webp
    :alt: TODO

The maximum sample rate for two active channels in 12 bit mode is 330 MS/s.

.. image:: ./_images/ngscopeclient-max-sample-rate-12bit-2CH.webp
    :alt: TODO

The maximum sample rate for three or four active channels in 12 bit mode is 165 MS/s. 

.. image:: ./_images/ngscopeclient-max-sample-rate-12bit-4CH.webp
    :alt: TODO
