/*
* Common PCIe utility functions
* ===============================
*
* Alexander Hornburg <alexande@xilinx.com>
*
* Description:
* ------------
* This is a sample driver for the Xilinx Inc. 'DMA/Bridge Subsystem for PCIe v3.0' (XDMA).
*
*/

#pragma once

#include <wdf.h>
#include <ntddk.h>
#include <initguid.h> // required for GUID definitions
#include <wdmguid.h> // required for WMILIB_CONTEXT

static UCHAR FindCapability(IN PBUS_INTERFACE_STANDARD pciBus, IN PPCI_COMMON_HEADER pciHeader,
                            IN ULONG capabilityID) {

    PCI_EXPRESS_CAPABILITY pcieCapabilities = { 0 };

    // check if capabilities list supported
    if ((pciHeader->Status & PCI_STATUS_CAPABILITIES_LIST) == 0) {
        return 0;
    }

    // get offset to capabilites list
    UCHAR capabilityOffset;
    if ((pciHeader->HeaderType &	(~PCI_MULTIFUNCTION)) == PCI_BRIDGE_TYPE) {
        capabilityOffset = pciHeader->u.type1.CapabilitiesPtr;
    } else if ((pciHeader->HeaderType & (~PCI_MULTIFUNCTION)) == PCI_CARDBUS_BRIDGE_TYPE) {
        capabilityOffset = pciHeader->u.type2.CapabilitiesPtr;
    } else {
        capabilityOffset = pciHeader->u.type0.CapabilitiesPtr; // PCI_DEVICE_TYPE
    }

    // Loop through the capabilities in search of the pcie capability. 
    while (capabilityOffset != 0) {

        // Read the header of the capability at this offset.
        pciBus->GetBusData(pciBus->Context, PCI_WHICHSPACE_CONFIG, &pcieCapabilities,
                           capabilityOffset, sizeof(PCI_CAPABILITIES_HEADER));

        // If the retrieved capability is not the pcie capability that we are looking 
        // for, follow the link to the next capability and continue looping.
        if (pcieCapabilities.Header.CapabilityID == capabilityID) {
            break; // Found the capability
        } else {
            // This is some other capability. Keep looking.
            capabilityOffset = pcieCapabilities.Header.Next;
        }
    }

    return capabilityOffset;
}

/// Determine how many MSI/MSI-X message IDs are assigned by the OS.
static NTSTATUS GetNumMsiVectors(IN WDFDEVICE device, OUT PUSHORT numMsiVectors) {

    BUS_INTERFACE_STANDARD pciBus;
    PCI_COMMON_HEADER pciHeader;

    // get bus interface
    NTSTATUS status = WdfFdoQueryForInterface(device, &GUID_BUS_INTERFACE_STANDARD,
        (PINTERFACE)&pciBus, sizeof(BUS_INTERFACE_STANDARD), 1 /* Version */, NULL);
    if (!NT_SUCCESS(status)) {
        return status;
    }

    ULONG bytesRead = pciBus.GetBusData(pciBus.Context, PCI_WHICHSPACE_CONFIG, &pciHeader,
                                        0, PCI_COMMON_HDR_LENGTH);
    if (bytesRead != (ULONG)PCI_COMMON_HDR_LENGTH) {
        return STATUS_INVALID_DEVICE_REQUEST;
    }

    UCHAR msiCapabilityOffset = FindCapability(&pciBus, &pciHeader, PCI_CAPABILITY_ID_MSI);
    if (msiCapabilityOffset == 0) {
        return STATUS_NOINTERFACE;

    }

    USHORT messageControl = 0;
    bytesRead = pciBus.GetBusData(pciBus.Context, PCI_WHICHSPACE_CONFIG, &messageControl,
                                        msiCapabilityOffset + sizeof(PCI_CAPABILITIES_HEADER), sizeof(USHORT));
    if (bytesRead != sizeof(USHORT)) {
        return STATUS_INTERNAL_ERROR;
    }

    *numMsiVectors = 1 << ((messageControl & 0x70) >> 4);
    return STATUS_SUCCESS;

}

/// Determine which Legacy/Line Interrupt bin is used.
/// 1=A, 2=B, 3=C, 4=D
static NTSTATUS GetLineInterruptPin(IN WDFDEVICE device, OUT PUINT32 interruptPin) {
    BUS_INTERFACE_STANDARD pciBus;
    PCI_COMMON_HEADER pciHeader;

    // get bus interface
    NTSTATUS status = WdfFdoQueryForInterface(device, &GUID_BUS_INTERFACE_STANDARD,
        (PINTERFACE)&pciBus, sizeof(BUS_INTERFACE_STANDARD), 1 /* Version */, NULL);
    if (!NT_SUCCESS(status)) {
        return status;
    }

    ULONG bytesRead = pciBus.GetBusData(pciBus.Context, PCI_WHICHSPACE_CONFIG, &pciHeader,
                                        0, PCI_COMMON_HDR_LENGTH);
    if (bytesRead != (ULONG)PCI_COMMON_HDR_LENGTH) {
        return STATUS_INVALID_DEVICE_REQUEST;
    }

    *interruptPin = pciHeader.u.type0.InterruptPin;
    
    return STATUS_SUCCESS;
}