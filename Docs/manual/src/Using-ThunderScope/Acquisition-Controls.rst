.. _Acquisition-Controls:

Acquisition Controls
====================

This guide assumes you have installed the driver and software for ThunderScope. 
If you have not already done do, please follow the :ref:`getting started guide <Getting-Started>`.

Sample Rate
-----------

TODO - Effect on capture length with fixed memory depth

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

TODO

.. image:: ./_images/ngscopeclient-memory-depth-1.webp
    :alt: TODO
.. image:: ./_images/ngscopeclient-memory-depth-2.webp
    :alt: TODO
.. image:: ./_images/ngscopeclient-memory-depth-3.webp
    :alt: TODO

ADC Resolution
--------------

TODO

.. image:: ./_images/ngscopeclient-resolution-1.webp
    :alt: TODO
.. image:: ./_images/ngscopeclient-resolution-2.webp
    :alt: TODO
.. image:: ./_images/ngscopeclient-resolution-3.webp
    :alt: TODO

Active Channels Vs. Max. Sample Rate - 8 Bit
--------------------------------------------

TODO - explain interleaving and stress that memory depth is per channel! 

.. image:: ./_images/ngscopeclient-max-sample-rate-8bit-1CH.webp
    :alt: TODO
.. image:: ./_images/ngscopeclient-max-sample-rate-8bit-2CH.webp
    :alt: TODO
.. image:: ./_images/ngscopeclient-max-sample-rate-8bit-4CH.webp
    :alt: TODO

Active Channels Vs. Max. Sample Rate - 12 Bit
---------------------------------------------

TODO

.. image:: ./_images/ngscopeclient-max-sample-rate-12bit-1CH.webp
    :alt: TODO
.. image:: ./_images/ngscopeclient-max-sample-rate-12bit-2CH.webp
    :alt: TODO
.. image:: ./_images/ngscopeclient-max-sample-rate-12bit-4CH.webp
    :alt: TODO