.. _Trigger-Controls:

Trigger Controls
=================

This guide assumes you have installed the driver and software for ThunderScope. 
If you have not already done do, please follow the :ref:`getting started guide <Getting-Started>`.

Trigger Menu
------------

To open the trigger menu, click on "Setup" on the main menu at the top of the window

.. image:: ./_images/ngscopeclient-trigger-menu-1.webp
    :alt: TODO

Then click on "Trigger"

.. image:: ./_images/ngscopeclient-trigger-menu-2.webp
    :alt: TODO

This will spawn a trigger menu element, which is shown docked to the sidebar below:

.. image:: ./_images/ngscopeclient-trigger-menu-3.webp
    :alt: TODO

Trigger Type
------------

To change the trigger type, click on the down arrow next to "Type" on the trigger menu

.. image:: ./_images/ngscopeclient-trigger-type-1.webp
    :alt: TODO

Then select the desired trigger type from the drop down menu

.. image:: ./_images/ngscopeclient-trigger-type-2.webp
    :alt: TODO

.. note::
    At time of writing, only edge trigger is supported. 
    We are working on adding new triggers, if you are interested in helping with new trigger development, check out the :ref:`Development Guide <Development-Guide>`.

Trigger Delay
-------------

To delay the capture relative to the point that it was triggered, click on the arrow on any horizontal scale and drag it left or right.

.. image:: ./_images/ngscopeclient-horizontal-delay-1.webp
    :alt: TODO

.. image:: ./_images/ngscopeclient-horizontal-delay-2.webp
    :alt: TODO

.. image:: ./_images/ngscopeclient-horizontal-delay-3.webp
    :alt: TODO

.. image:: ./_images/ngscopeclient-horizontal-delay-4.webp
    :alt: TODO

The delay can be adjusted on separate waveform groups, this will affect all waveform groups as there is only one trigger point that the delay is relative to.

.. image:: ./_images/ngscopeclient-horizontal-waveform-group-delay-1.webp
    :alt: TODO

.. image:: ./_images/ngscopeclient-horizontal-waveform-group-delay-2.webp
    :alt: TODO

The delay can also be adjusted exactly in the trigger menu

.. image:: ./_images/ngscopeclient-horizontal-delay-menu-1.webp
    :alt: TODO

.. image:: ./_images/ngscopeclient-horizontal-delay-menu-2.webp
    :alt: TODO

.. image:: ./_images/ngscopeclient-horizontal-delay-menu-3.webp
    :alt: TODO

Trigger Channel
---------------

To change the channel that is being triggered on, click on the down arrow next to "din" on the trigger menu 

.. image:: ./_images/ngscopeclient-trigger-channel-1.webp
    :alt: TODO

Then select the desired channel from the drop down menu

.. image:: ./_images/ngscopeclient-trigger-channel-2.webp
    :alt: TODO

Note that the trigger delay and level arrows now match the color of the new triggered channel

.. image:: ./_images/ngscopeclient-trigger-channel-3.webp
    :alt: TODO

Trigger Edge
------------

To change the edge that is being triggered on, click on the down arrow next to "Edge" on the trigger menu 

.. image:: ./_images/ngscopeclient-trigger-edge-1.webp
    :alt: TODO

Then select the desired type of edge from the drop down menu

.. image:: ./_images/ngscopeclient-trigger-edge-2.webp
    :alt: TODO

Note that the waveform below is now triggered on the falling edge

.. image:: ./_images/ngscopeclient-trigger-edge-3.webp
    :alt: TODO

Trigger Level
-------------

To change the trigger level, click on the arrow on the vertical scale of the triggered channel and drag it up or down.

.. image:: ./_images/ngscopeclient-trigger-level-1.webp
    :alt: TODO

.. image:: ./_images/ngscopeclient-trigger-level-2.webp
    :alt: TODO

.. image:: ./_images/ngscopeclient-trigger-level-3.webp
    :alt: TODO

.. image:: ./_images/ngscopeclient-trigger-level-4.webp
    :alt: TODO

The trigger level can also be changed in the trigger menu. Selecting the value next to "Lower Level"

.. image:: ./_images/ngscopeclient-trigger-level-menu-1.webp
    :alt: TODO

Then type in a new value

.. image:: ./_images/ngscopeclient-trigger-level-menu-2.webp
    :alt: TODO

Hit the "Enter" key to apply the change, now shown on the waveform below

.. image:: ./_images/ngscopeclient-trigger-level-menu-3.webp
    :alt: TODO