.. _Calibration:

Calibration
===========

All of the components in the signal chain have non-ideal properties. 
Calibration aims to compensate for these non-ideal properties 
so that the signal shown to the user is as close as possible to the signal at the input.
Calibration can involve physically changing the signal chain or changing the interpretation of it's output.
The types of calibration relevant to ThunderScope are discussed in the sections below in the order they are performed.

1. Buffer Low Frequency Response
--------------------------------

The ThunderScope front-end uses a BUF802 in composite loop mode as an input buffer. 
Composite loop mode splits the input signal into a low frequency path which is handled by the OPA140 opamp,  
and a high frequency path which goes to the BUF802 input. 
The frequency range covered by both parts is called the crossover region.

.. image:: ./_images/BUF802_CL_Response.webp
    :alt: TODO
    :align: center

The gain applied to the high frequency path by the BUF802 can vary and is slightly less than 1x (0dB), 
as described in the datasheet excerpt below:

.. image:: ./_images/BUF802_Gain.webp
    :alt: TODO

The crossover region is governed primarily by C1035, connected across the opamp. 
This cap has a fixed value in this design, which was determined to provide good crossover flatness.

.. image:: ./_images/BUF802_Crossover_Cap.webp
    :alt: TODO

In order to make the overall response flat, the gain applied to the low frequency path by the opamp 
must be adjusted to match that of the gain applied to the high frequency path by the BUF802. 
This is done using the R1049 trimpot.

.. image:: ./_images/BUF802_Trimpot.webp
  :width: 49%
  :alt: TODO
.. image:: ./_images/BUF802_Trimpot_PCB.webp
  :width: 49%
  :alt: TODO

The procedure for calibrating the buffer low frequency response is as follows:

#. In 50 Ohm mode, measure the peak to peak value of a 500mVpp 10 MHz sine input at the 800mV range setting
#. With a 500mVpp 100 Hz sine input at the 800mV range setting, tweak the trimpot until the unit measures the same value as the step above

2. Attenuator High Frequency Response
-------------------------------------

.. todo::

    Write this section

3. Passband Gains
-----------------

.. todo::

    Write this section

4. DC Offsets
-------------

.. todo::

    Write this section