TS-USB4 Box Build
=================

This guide assumes you have a tested and calibrated TS-USB4 variant mainboard, as shown below: 

.. image:: ./_images/TS-USB4-PCBA-Front.webp
  :width: 49%
  :alt: Front side of an assembled TS-USB4 mainboard
.. image:: ./_images/TS-USB4-PCBA-Back.webp
  :width: 49%
  :alt: Back side of an assembled TS-USB4 mainboard
    

If you do not have a tested and calibrated TS-USB4 mainboard, check out the :ref:`Mainboard Assembly Guide <Mainboard-Assembly>` 
and then the :ref:`Testing and Calibration Guide <Testing-and-Calibration>`.


If you wish to convert your existing TS-PCIe variant PCBA, use the :ref:`Changing Variants Guide <Changing-Variants>`.


Step 1: Source a USB4/TBT Adaptor
---------------------------------

The USB4 variant of ThunderScope is designed to work with any M.2 NVME adaptor that:

#. Provides 4-lane PCIe tunneling to the host
#. Can be modified to output the USB voltage (VUSB) on the M.2 3V3 rail. 

The following is a table of chipsets that support 4-lane PCIe tunneling:

.. list-table:: Chipsets with 4-lane PCIe tunneling support
   :widths: 25 25 50
   :header-rows: 1

   * - Vendor
     - Part Number
     - Notes
   * - ASMedia
     - ASM2464PD
     - USB4, Poor support for older TBT3 hosts
   * - ASMedia
     - ASM2464PDX
     - Similar to above but has an internal PCIe switch
   * - Intel
     - JHL9480
     - TBT5
   * - Intel
     - JHL9440
     - TBT4 only version of above
   * - Intel
     - JHL7440
     - TBT4
   * - Intel
     - JHL6x40
     - TBT3
   * - Intel
     - DSL6x40
     - TBT3

.. warning::
    Your adaptor must use one of these to work with TS-USB4.
    
As designs with these chipsets may vary, this guide will not go in depth on determining if specific adaptors 
can be modified to output VUSB on the M.2 3V3 rail. Instead, a table of adaptors that are known 
to be modifiable to work with TS-USB4 is provided below:

.. _adaptor-table:
.. list-table:: Adaptor boards known to work with TS-USB4
   :widths: 10 50 40
   :header-rows: 1

   * - Vendor
     - Notes
     - Photo
   * - `JoneyTech <https://www.alibaba.com/product-detail/MAC-Compatible-Thunderbolt-3-Type-C_62255630952.html>`_
     - The black board shown in the listing, link only for documentation as they currently sell their JHL7440 solution 
       from the same link, which may not work with the step below! 
     - .. image:: ./_images/JoneyTech-Adaptor.webp
        :alt: JoneyTech TBT3 to NVME adaptor, uses JHL6540 chipset on a black PCB
   * - `IOCrest <https://www.alibaba.com/product-detail/IOCREST-Certified-SSD-Enclosure-Thunderbolt-3_62400127925.html>`_
     - You can ask them to sell you only the PCBA
     - .. image:: ./_images/IOCrest-Adaptor.webp
        :alt: IOCrest TBT3 to NVME adaptor, uses JHL6540 chipset on a green PCB


Step 2: Modify the USB4/TBT Adaptor
-----------------------------------

.. tab:: JoneyTech

  Below is a photo of the JoneyTech adaptor, with components of interest annotated.

  .. image:: ./_images/JoneyTech-Adaptor-Annotated.webp
    :alt: JoneyTech TBT3 to NVME adaptor. It is annotated as described below.
  
  The procedure for this modification is as follows:

  #. Remove the ferrite bead (1) from the board. This will disconnect 3V3 from the M.2 connector.
  #. Solder one end of a wire to the (-) terminal of the VUSB current shunt (2). 
     The (-) terminal is the terminal with the lower voltage during operation. 
     We solder to this terminal so that our current draw can still be monitored by the PD controller.
  #. Solder the other end of the wire to the (+) terminal of the M.2 bulk capacitor (3). 
     This will connect the USB voltage (VUSB) to the 3V3 pins of the M.2 connector.

  Once completed, your adaptor should look like the following photo:

  .. image:: ./_images/JoneyTech-Adaptor-Modified.webp
    :alt: JoneyTech TBT3 to NVME adaptor. It is modified according to the instructions above.  

.. tab:: IOCrest

  Below is a photo of the IOCrest adaptor, with components of interest annotated:

  .. image:: ./_images/IOCrest-Adaptor-Annotated.webp
    :alt: IOCrest TBT3 to NVME adaptor. It is annotated as described below. 

  The procedure for this modification is as follows:

  #. Remove the ferrite bead (1) from the board. This will disconnect 3V3 from the M.2 connector.
  #. Solder one end of a wire to the (-) terminal of the VUSB current shunt (2). 
     The (-) terminal is the terminal with the lower voltage during operation. 
     We solder to this terminal so that our current draw can still be monitored by the PD controller.
  #. Solder the other end of the wire to the (+) terminal of the M.2 bulk capacitor (3). 
     This will connect the USB voltage (VUSB) to the 3V3 pins of the M.2 connector.

  Once completed, your adaptor should look like the following photo:

  .. image:: ./_images/IOCrest-Adaptor-Modified.webp
    :alt: IOCrest TBT3 to NVME adaptor. It is modified according to the instructions above.

.. warning::
    This modification violates the M.2 specification, do not use this modified adaptor with anything other than 
    a TS-USB4 without reverting the modification. Failure to do so will result in damage to the device it is used with.

Step 3: Design and/or Source an Interposer
------------------------------------------

The TS-USB4 mainboard is designed with a custom pinout M.2 connector in a fixed location on the board, 
while adaptors have variable dimensions between their USB connector and their M.2 connector.

The connection between the adaptor and the mainboard has two requirements:

* The PCIe signals need to be connected from the adaptor M.2 connector to the mainboard M.2 connector 
* The adaptor's USB-C port needs to be centered along the edge of the mainboard. 

An interposer board is used to accomplish these goals in a way where no changes are needed on the mainboard, 
essentially "soaking up" any changes in adaptor dimensions. 
Therefore, a new interposer will need to be designed in order to use a new adaptor.

If you are using one of the adaptors from the :ref:`table above <adaptor-table>`, 
the associated interposer design is available from the `ThunderScope repo <ts_hardware_repo_>`__.
These must be made on a 4-layer process with 0.8mm thick PCB and impedence control.

When designing an interposer, the board outline must match that of the mainboard 
and include three mounting holes that match up with standoffs on the mainboard, 
as well as clearance holes for the heatsink. Cutouts around the M.2 edge connectors must be added to fit the M.2 connector, 
with space to slide the M.2 edge connector into the M.2 connector on the mainboard/adaptor. 
It is helpful to label the mounting holes with assembly order and label which side of the board faces the adaptor/mainboard. 
The `existing interposer boards <ts_hardware_repo_>`__ can be used as a reference for new designs.

.. _ts_hardware_repo: https://github.com/EEVengers/ThunderScope/tree/master/Hardware/KiCad

Step 4: Install the Adaptor on the Interposer
---------------------------------------------

Place the adaptor into the rightmost M.2 slot, aligning it with the edge connector and slotting it in at an angle. 
Flip the board over and screw the adaptor in through interposer mounting hole (1).

.. image:: ./_images/JoneyTech-Interposer-and-Adaptor.webp
  :width: 45%
  :alt: Front side of a JoneyTech Interposer with adaptor
.. image:: ./_images/JoneyTech-Interposer-Adaptor-Install.webp
  :width: 54%
  :alt: Back side of a JoneyTech Interposer with adaptor installed. A screwdriver is shown with a screw through mounting hole (1)


Step 5: Install the Interposer on the Mainboard
-----------------------------------------------

At this point you should have a mainboard and an interposer with the adaptor installed.

.. image:: ./_images/JoneyTech-Interposer-and-Mainboard.webp
  :alt: A TS-USB4 variant mainboard (left) and a JoneyTech interposer with adaptor installed.

Align the remaining interposer M.2 edge connector into the mainboard M.2 connector, slotting it in at an angle. 
Screw the interposer into the mainboard through interposer mounting holes (2-4).

.. image:: ./_images/JoneyTech-Interposer-Mainboard-Install.webp
  :width: 49%
  :alt: TODO
.. image:: ./_images/JoneyTech-Interposer-Mainboard-Installed.webp
  :width: 49%
  :alt: TODO

Step 6: Assemble the Front Endcap
---------------------------------
.. note::
  The front endcap is a 2-layer 1.6mm thick PCB, design files for it can be found in the `ThunderScope repo <ts_front_endcap_repo_>`__. 
  In order to solder the probe compensation terminals (Keystone Electronics 1046) with proper alignment, a 3d printed jig is used. 
  The STL file for the jig can be found in the `ThunderScope repo <ts_mechanical_repo_>`__.

.. _ts_front_endcap_repo: https://github.com/EEVengers/ThunderScope/tree/master/Hardware/KiCad/TS_Front_Endcap
.. _ts_mechanical_repo: https://github.com/EEVengers/ThunderScope/tree/master/Hardware/Mechanical

Place the jig with the rectangular slots on the right side. Load a terminal into each slot, with the round pins facing up.

.. image:: ./_images/Back-Endcap-Assembly-1.webp
  :width: 49%
  :alt: TODO
.. image:: ./_images/Back-Endcap-Assembly-2.webp
  :width: 49%
  :alt: TODO

Place the endcap onto the jig with channel numbers facing down, making sure the terminal pins go through the two through-holes on the right side of the PCB. Solder the pins to the PCB and remove the endcap from the jig.

.. image:: ./_images/Back-Endcap-Assembly-3.webp
  :width: 49%
  :alt: TODO
.. image:: ./_images/Back-Endcap-Assembly-4.webp
  :width: 49%
  :alt: TODO

Step 7: Install the Front Endcap
--------------------------------

.. note::
  The extruded aluminium enclosure used for TS-USB4 is the Hammond Manufacturing 1455L1201BK. 
  If bought individually from distributors this part number includes the extrusion, 
  belly plate, screws, plastic bezels and a metal endcap.
  The plastic bezels can be used in place of the silicone bezels shown in the step below.  

With the belly plate of the extrusion 
(the belly plate is the metal part that slides into the bottommost slot of the extrusion, by the screws) 
facing towards you, place a bezel on one side of the extrusion. 
For silicone bezels, choose the side with less flash (the extra material around the seam in the part) to face away from you.

.. image:: ./_images/Extrusion-Front.webp
  :width: 49%
  :alt: TODO
.. image:: ./_images/Extrusion-Front-Bezel.webp
  :width: 49%
  :alt: TODO

Place the assembled front endcap onto the bezel, the text on the endcap should be facing towards you. 
Drive the self-tapping screws into the extrusion through the endcap and bezel.

.. image:: ./_images/Extrusion-Front-Endcap.webp
  :width: 49%
  :alt: TODO
.. image:: ./_images/Extrusion-Front-Endcap-Installed.webp
  :width: 49%
  :alt: TODO

.. warning::
  
  Do not overtighten the screws if using a silicone bezel. The bezel will bow out if the screw is overtightened, 
  as shown on the right side of the photo below:
  
  .. image:: ./_images/Extrusion-Front-Endcap-Overtightened.webp
    :alt: TODO

Step 8: Install the Boards in the Enclosure
-------------------------------------------

Line the boards up with the 2nd and 3rd board guides from the bottom (not counting the slot for the belly plate) 
as shown below and slide them into the enclosure.

.. image:: ./_images/Enclosure-Board-Guides.webp
  :width: 49%
  :alt: TODO
.. image:: ./_images/Enclosure-Boards-Installed.webp
  :width: 49%
  :alt: TODO

Step 9: Assemble the Back Endcap
--------------------------------

.. note::
  The back endcap is a 2-layer 1.6mm thick PCB, design files for it can be found in the `ThunderScope repo <ts_back_endcap_repo_>`__. 

.. _ts_back_endcap_repo: https://github.com/EEVengers/ThunderScope/tree/master/Hardware/KiCad/TS_Back_Endcap

Using a flush cutter, snip off the L-shaped plastic part next to the fan wires. The fan used is the Same Sky Devices CFM-2010CF-060-066.

.. image:: ./_images/Fan-Mod-1.webp
  :width: 49%
  :alt: TODO
.. image:: ./_images/Fan-Mod-2.webp
  :width: 49%
  :alt: TODO

Line up the fan with the three endcap fan mounting holes, the fan wires should be on the top right. 
Drive three self tapping screws (McMaster-Carr PN 95836A103) into the fan through the endcap.

.. image:: ./_images/Fan-Install-1.webp
  :width: 32.9%
  :alt: TODO
.. image:: ./_images/Fan-Install-2.webp
  :width: 32.9%
  :alt: TODO
.. image:: ./_images/Fan-Install-3.webp
  :width: 32.9%
  :alt: TODO

Using a flush cutter, cut the fan wires to the length of the copper pads and 
strip the remaining length of insulation from the wires.

.. image:: ./_images/Fan-Install-4.webp
  :width: 24.5%
  :alt: TODO
.. image:: ./_images/Fan-Install-5.webp
  :width: 24.5%
  :alt: TODO
.. image:: ./_images/Fan-Install-6.webp
  :width: 24.5%
  :alt: TODO
.. image:: ./_images/Fan-Install-7.webp
  :width: 24.5%
  :alt: TODO

Solder the wires to the pads on the endcap.

.. image:: ./_images/Fan-Install-8.webp
  :width: 49%
  :alt: TODO
.. image:: ./_images/Fan-Install-9.webp
  :width: 49%
  :alt: TODO

Step 10: Install the Back Endcap
--------------------------------

With the belly plate of the extrusion facing towards you, place a bezel on the side of the extrusion opposite the front endcap. 
For silicone bezels, choose the side with less flash (the extra material around the seam in the part) to face away from you.

.. image:: ./_images/Enclosure-Boards-Installed.webp
  :width: 49%
  :alt: TODO
.. image:: ./_images/Extrusion-Back-Bezel.webp
  :width: 49%
  :alt: TODO

Place the assembled back endcap onto the bezel through the BNC connectors, the text on the endcap should be facing towards you. 
Drive the self-tapping screws into the extrusion through the endcap and bezel, 
then drive an M4 screw through the endcap into the grounding lug. 

.. image:: ./_images/Extrusion-Back-Endcap.webp
  :width: 49%
  :alt: TODO
.. image:: ./_images/Extrusion-Back-Endcap-Installed.webp
  :width: 49%
  :alt: TODO

.. warning::
  
  Do not overtighten the screws if using a silicone bezel. The bezel will bow out if the screw is overtightened, 
  as shown on the right side of the photo below:
  
  .. image:: ./_images/Extrusion-Front-Endcap-Overtightened.webp
    :alt: TODO

Step 11: Engrave the Enclosure
------------------------------

.. danger::
  This step is optional and the instructions below are for internal use. 
  If you wish to replicate this step, do so at your own risk and observe proper laser safety precautions!

Slide the unit into the fixture on the bed of the laser engraver. 
Turn on the air filtration system and put on the laser safety glasses.
Plug the unit in and run the engraving and end of line script on the engraving station computer.

.. image:: ./_images/Engraving-1.webp
  :width: 49%
  :alt: TODO
.. image:: ./_images/Engraving-2.webp
  :width: 49%
  :alt: TODO

.. todo::

  Update photos to match text and add info about script once it is made

This completes the box-build for TS-USB4!

.. image:: ./_images/TS-USB4.webp
  :alt: TODO