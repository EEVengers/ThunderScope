.. _Capture-Modes:

Capture Modes
=============

This guide assumes you have installed the driver and software for ThunderScope. 
If you have not already done do, please follow the :ref:`getting started guide <Getting-Started>`.

Normal Trigger
--------------

Press the button shown below to start capturing in normal trigger mode.

.. image:: ./_images/ngscopeclient-normal.webp
    :alt: Screenshot of ngscopeclient window with an arrow pointing at the normal capture button

When there is no signal that matches the trigger condition, the status indicator will show "ARMED" and the waveform view will not update.

.. image:: ./_images/ngscopeclient-armed-no-signal.webp
    :alt: Screenshot of ngscopeclient showing a triggered 25 MHz sine in normal mode

When a signal matches the trigger condition, the status indicator will show "TRIGGERED" and the waveform view will update with the triggered waveform as long as the signal is present.

.. image:: ./_images/ngscopeclient-triggered.webp
    :alt: Screenshot of ngscopeclient showing a triggered 25 MHz sine in normal mode

Auto Trigger
------------

Press the button shown below to start capturing in auto trigger mode.

.. image:: ./_images/ngscopeclient-auto.webp
    :alt: Screenshot of ngscopeclient window with an arrow pointing at the auto capture button

When there is no signal that matches the trigger condition, the status indicator will show "TRIGGERED" and the waveform view will continuously update with untriggered data. 
This is very useful for looking at unknown signals before a good trigger condition can be set. 

.. image:: ./_images/ngscopeclient-auto-no-signal.webp
    :alt: Screenshot of ngscopeclient showing the signal from an unconnected channel in auto mode

When a signal matches the trigger condition, the status indicator will show "TRIGGERED" and the waveform view will update with the triggered waveform as long as the signal is present.

.. image:: ./_images/ngscopeclient-triggered.webp
    :alt: Screenshot of ngscopeclient showing a triggered 25 MHz sine in normal mode

Single Trigger
--------------

Press the button shown below to take a single normal trigger capture.

.. image:: ./_images/ngscopeclient-single-1.webp
    :alt: Screenshot of ngscopeclient window with an arrow pointing at the single capture button

When there is no signal that matches the trigger condition, the status indicator will show "ARMED" and the waveform view will not update.

.. image:: ./_images/ngscopeclient-armed-no-signal.webp
    :alt: Screenshot of ngscopeclient showing a triggered 25 MHz sine in normal mode

When a signal matches the trigger condition, the status indicator will show "STOPPED" and the waveform view will show the single triggered waveform and then stop updating.

.. image:: ./_images/ngscopeclient-stopped-with-signal.webp
    :alt: Screenshot of ngscopeclient showing a signal in single mode

Force Trigger
-------------

Press the button shown below to take a single capture, ignoring trigger conditions.

.. image:: ./_images/ngscopeclient-force.webp
    :alt: Screenshot of ngscopeclient window with an arrow pointing at the force capture button

The status indicator will show "STOPPED" and the waveform view will show the single untriggered waveform and then stop updating.

.. image:: ./_images/ngscopeclient-stopped-no-signal.webp
    :alt: Screenshot of ngscopeclient showing a signal in force mode

Stop Capture
------------

Press the button below to stop a capture that is currently active.

.. image:: ./_images/ngscopeclient-stop.webp
    :alt: Screenshot of ngscopeclient window with an arrow pointing at the stop capture button

The status indicator will show "STOPPED" and the waveform view will no longer update.

.. image:: ./_images/ngscopeclient-stopped-with-signal.webp
    :alt: Screenshot of ngscopeclient showing a signal in single mode