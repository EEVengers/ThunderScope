.. _Channel-Controls:

Channel Controls
================

This guide assumes you have installed the driver and software for ThunderScope. 
If you have not already done do, please follow the :ref:`getting started guide <Getting-Started>`.

Channel Properties
------------------

To open a channel's properties, left click on its channel label on the top left corner of its waveform view

.. image:: ./_images/ngscopeclient-channel-label.webp
    :alt: TODO

The resulting menu, as with every UI element, can be used free-floating

.. image:: ./_images/ngscopeclient-channel-properties-menu.webp
    :alt: TODO

Or docked by dragging it onto one of the docking icons over a UI element

.. image:: ./_images/ngscopeclient-channel-properties-docking.webp
    :alt: TODO

.. image:: ./_images/ngscopeclient-channel-properties-docked.webp
    :alt: TODO

It can then be resized by clicking and dragging its border.

.. image:: ./_images/ngscopeclient-channel-properties-resizing.webp
    :alt: TODO

.. image:: ./_images/ngscopeclient-channel-properties-resized.webp
    :alt: TODO

Vertical Scale
--------------

To change the vertical scale for a waveform view, click on the vertical scale of the waveform view and scroll up or down for higher or lower vertical scales.
This will change the vertical scale for all channels in that waveform view.

.. image:: ./_images/ngscopeclient-vertical-scale-mouse-over.webp
    :alt: TODO

.. image:: ./_images/ngscopeclient-vertical-scale-changed.webp
    :alt: TODO

If the channels need to have separate scales, place them in separate waveform views. 
This may seem odd compared to most scopes where all the waveforms are displayed in the same view, but it has a key advantage!
With waveform views, channels can always have the best vertical scale and offset settings for filling the instrument's ADC range 
without sacrificing the readability of the signals. On benchtop scopes, some signal information is often lost when adjusting 
the channels to fit legibly on one view.

.. image:: ./_images/ngscopeclient-separate-vertical-scales.webp
    :alt: TODO

If an exact vertical scale is needed on a channel, it can be entered numerically on that channel's "Range" setting under the "Vertical" tab in that channel's properties

.. image:: ./_images/ngscopeclient-channel-menu-vertical.webp
    :alt: TODO

.. image:: ./_images/ngscopeclient-channel-menu-range.webp
    :alt: TODO

After entering the value, click "Apply" to apply the change in vertical scale

.. image:: ./_images/ngscopeclient-channel-menu--range-apply.webp
    :alt: TODO

.. image:: ./_images/ngscopeclient-channel-menu--range-applied.webp
    :alt: TODO

Vertical Offset
---------------

TODO

Termination and Coupling
------------------------

TODO

Attenuation
-----------

TODO

Channel Nickname
----------------

TODO

Channel Color
-------------

TODO