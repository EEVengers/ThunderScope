TS-USB4 Box-Build
========

This guide assumes you have a tested and calibrated TS-USB4 variant PCBA. If you do not have a tested and calibrated TS-USB4 PCBA, check out the :ref:`Board Assembly Guide <Board Assembly>` and then the :ref:`Testing and Calibration Guide <Testing and Calibration>`. If you wish to convert your existing TS-PCIe variant PCBA, use the :ref:`Changing Variants Guide <Changing Variants>`.

Step 1: Source a USB4/TBT Adaptor
----------------

The USB4 variant of ThunderScope is designed to work with any M.2 NVME adaptor that:

#. Provides 4-lane PCIe tunneling to the host
#. Can be modified to output VUSB on the M.2 3V3 rail. 

The following is a table of chipsets that support 4-lane PCIe tunneling:

.. list-table:: Table of Adaptor Chipsets for use with TS-USB4
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
     - Similar to above but has an internal PCIe switch and requires external PD controller
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
    
As designs with these chipsets may vary, this guide will not go in depth on determining if specific adaptors can be modified to output VUSB on the M.2 3V3 rail. Instead, a table of adaptors that are known to be modifiable to work with TS-USB4 is provided below:

.. list-table:: Table of Adaptor Boards for use with TS-USB4
   :widths: 25  50
   :header-rows: 1

   * - Vendor
     - Notes
   * - `JoneyTech <https://www.alibaba.com/product-detail/MAC-Compatible-Thunderbolt-3-Type-C_62255630952.html>`_
     - The black board shown in the listing, link only for documentation as they currently sell their JHL7440 solution from the same link, so buyer beware! 
   * - `IOCrest <https://www.alibaba.com/product-detail/IOCREST-Certified-SSD-Enclosure-Thunderbolt-3_62400127925.html>`_
     - You can ask them to sell you only the PCBA


Step 2: Modify the USB4/TBT Adaptor
----------------

