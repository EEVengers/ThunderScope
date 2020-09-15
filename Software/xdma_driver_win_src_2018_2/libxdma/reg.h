/*
* XDMA Register Map
* =================
*
* Copyright 2018 Xilinx Inc.
* Copyright 2010-2012 Sidebranch
* Copyright 2010-2012 Leon Woestenberg <leon@sidebranch.com>
*
* Maintainer:
* -----------
* Alexander Hornburg <alexander.hornburg@xilinx.com>
*
* References:
* -----------
*	[1] pg195-pcie-dma.pdf - DMA/Bridge Subsystem for PCI Express v4.0 - Product Guide
*/

#pragma once

// ========================= include dependencies =================================================

// ========================= declarations =================================================

#define LIMIT_TO_64(x)      (x & 0xFFFFFFFFFFFFFFFFULL)
#define LIMIT_TO_32(x)      (x & 0x00000000FFFFFFFFUL)
#define LIMIT_TO_16(x)      (x & 0x000000000000FFFFUL)

#define CLR_MASK(x, mask)   ((x) &= ~(mask));
#define SET_MASK(x, mask)   ((x) |=  (mask));

#define BIT_N(n)            (1 << n)

//  block identification bits
#define XDMA_ID_MASK        (0xFFF00000UL)
#define XDMA_ID             (0x1FC00000UL)
#define BLOCK_ID_MASK       (0xFFFF0000UL)
#define IRQ_BLOCK_ID        (XDMA_ID | 0x20000UL)
#define CONFIG_BLOCK_ID     (XDMA_ID | 0x30000UL)
#define XDMA_ID_ST_BIT      (BIT_N(15))

// Block module offsets
#define BLOCK_OFFSET        (0x1000UL)
#define IRQ_BLOCK_OFFSET    (2 * BLOCK_OFFSET)
#define CONFIG_BLOCK_OFFSET (3 * BLOCK_OFFSET)
#define SGDMA_BLOCK_OFFSET  (4 * BLOCK_OFFSET)
#define SGDMA_COMMON_BLOCK_OFFSET (6 * BLOCK_OFFSET)
#define ENGINE_OFFSET       (0x100UL)

//bits of the SGDMA engine control register
#define XDMA_CTRL_RUN_BIT                   (BIT_N(0))
#define XDMA_CTRL_IE_DESC_STOPPED           (BIT_N(1))
#define XDMA_CTRL_IE_DESC_COMPLETED         (BIT_N(2))
#define XDMA_CTRL_IE_ALIGNMENT_MISMATCH     (BIT_N(3))
#define XDMA_CTRL_IE_MAGIC_STOPPED          (BIT_N(4))
#define XDMA_CTRL_IE_INVALID_LENGTH         (BIT_N(5))
#define XDMA_CTRL_IE_IDLE_STOPPED           (BIT_N(6))
#define XDMA_CTRL_IE_READ_ERROR             (0x1f << 9)
#define XDMA_CTRL_IE_WRITE_ERROR            (0x1f << 14)
#define XDMA_CTRL_IE_DESCRIPTOR_ERROR       (0x1f << 19)
#define XDMA_CTRL_NON_INCR_ADDR             (BIT_N(25))
#define XDMA_CTRL_POLL_MODE                 (BIT_N(26))
#define XDMA_CTRL_RST                       (BIT_N(31))

#define XDMA_CTRL_IE_ALL (XDMA_CTRL_IE_DESC_STOPPED | XDMA_CTRL_IE_DESC_COMPLETED \
                          | XDMA_CTRL_IE_ALIGNMENT_MISMATCH | XDMA_CTRL_IE_MAGIC_STOPPED \
                          | XDMA_CTRL_IE_INVALID_LENGTH | XDMA_CTRL_IE_READ_ERROR | XDMA_CTRL_IE_WRITE_ERROR\
                          | XDMA_CTRL_IE_DESCRIPTOR_ERROR)

// bits of the SGDMA engine status register
#define XDMA_BUSY_BIT                       (BIT_N(0))
#define XDMA_DESCRIPTOR_STOPPED_BIT         (BIT_N(1))
#define XDMA_DESCRIPTOR_COMPLETED_BIT       (BIT_N(2))
#define XDMA_ALIGN_MISMATCH_BIT             (BIT_N(3))
#define XDMA_MAGIC_STOPPED_BIT              (BIT_N(4))
#define XDMA_FETCH_STOPPED_BIT              (BIT_N(5))
#define XDMA_IDLE_STOPPED_BIT               (BIT_N(6))
#define XDMA_STAT_READ_ERROR                (0x1fUL * BIT_N(9))
#define XDMA_STAT_DESCRIPTOR_ERROR          (0x1fUL * BIT_N(19))

#define XDMA_ENGINE_STOPPED_OK              (0UL)
#define XDMA_STAT_EXPECTED_ZERO             (XDMA_BUSY_BIT | XDMA_MAGIC_STOPPED_BIT | \
                                             XDMA_FETCH_STOPPED_BIT | XDMA_ALIGN_MISMATCH_BIT | \
                                             XDMA_STAT_READ_ERROR | XDMA_STAT_DESCRIPTOR_ERROR)


// bits of the SGDMA descriptor control field
#define XDMA_DESC_STOP_BIT                  (BIT_N(0))
#define XDMA_DESC_COMPLETED_BIT             (BIT_N(1))
#define XDMA_DESC_EOP_BIT                   (BIT_N(4))

#define XDMA_RESULT_EOP_BIT                 (BIT_N(0))

// Engine performance control register bits
#define XDMA_PERF_RUN                       BIT_N(0)
#define XDMA_PERF_CLEAR                     BIT_N(1)
#define XDMA_PERF_AUTO                      BIT_N(2)

#pragma pack(1)

/// H2C/C2H Channel Registers (H2C: 0x0, C2H: 0x1000)
/// To avoid Read-Modify-Write errors in concurrent systems, some registers can be set via 
/// additional mirror registers.
/// - W1S (write 1 to set)  - only the bits set will be set in the underlying register. all other
///                           bits are ignored.
/// - W1C (write 1 to clear)- only the bits set will be cleared in the underlying register. all other
///                           bits are ignored.
typedef struct {
    UINT32 identifier;
    UINT32 control;
    UINT32 controlW1S; // write 1 to set
    UINT32 controlW1C; // write 1 to clear
    UINT32 reserved_1[12];

    UINT32 status; // status register { 6'h10, 2'b0 } is 0x40
    UINT32 statusRC;
    UINT32 completedDescCount; // number of completed descriptors
    UINT32 alignments;
    UINT32 reserved_2[14];

    UINT32 pollModeWbLo;
    UINT32 pollModeWbHi;
    UINT32 intEnableMask;
    UINT32 intEnableMaskW1S;
    UINT32 intEnableMaskW1C;
    UINT32 reserved_3[9];

    UINT32 perfCtrl;
    UINT32 perfCycLo;
    UINT32 perfCycHi;
    UINT32 perfDatLo;
    UINT32 perfDatHi;
    UINT32 perfPndLo;
    UINT32 perfPndHi;

} XDMA_ENGINE_REGS;

/// IRQ Block Registers (0x2000)
typedef struct {
    UINT32 identifier;
    UINT32 userIntEnable;
    UINT32 userIntEnableW1S;
    UINT32 userIntEnableW1C;
    UINT32 channelIntEnable;
    UINT32 channelIntEnableW1S;
    UINT32 channelIntEnableW1C;
    UINT32 reserved_1[9];

    UINT32 userIntRequest;
    UINT32 channelIntRequest;
    UINT32 userIntPending;
    UINT32 channelIntPending;
    UINT32 reserved_2[12];

    UINT32 userVector[4];
    UINT32 reserved_3[4];
    UINT32 channelVector[2];

} XDMA_IRQ_REGS;

/// Config Block Registers (0x3000)
typedef struct {
    UINT32 identifier;
    UINT32 busDev;
    UINT32 pcieMPS;
    UINT32 pcieMRRS;
    UINT32 systemId;
    UINT32 msiEnable;
    UINT32 pcieWidth;
    UINT32 pcieControl; // 0x1C
    UINT32 reserved_1[8];

    UINT32 userMPS;     // 0x40
    UINT32 userMRRS;
    UINT32 reserved_2[6];
        
    UINT32 writeFlushTimeout; // 0x60
} XDMA_CONFIG_REGS;

/// H2C/C2H SGDMA Registers (H2C: 0x4000, C2H:0x5000)
typedef struct {
    UINT32 identifier;
    UINT32 reserved_1[31];
    UINT32 firstDescLo;
    UINT32 firstDescHi;
    UINT32 firstDescAdj;
    UINT32 descCredits;     //!< Writes to this register will add descriptor credits for the channel.
} XDMA_SGDMA_REGS, *PXDMA_SGDMA_REGS;

/// SGDMA Common Registers (0x6000)
typedef struct {
    UINT32 identifier;          // 0x00
    UINT32 reserved_1[3];
    UINT32 control;             // 0x10
    UINT32 controlW1S;          // 0x14
    UINT32 controlW1C;          // 0x18
    UINT32 reserved_2;
    UINT32 creditModeEnable;    // 0x20
    UINT32 creditModeEnableW1S; // 0x24
    UINT32 creditModeEnableW1C; // 0x28
} XDMA_SGDMA_COMMON_REGS, *PXDMA_SGDMA_COMMON_REGS;

#pragma pack()


#define EXPECT(EXP) ASSERTMSG(#EXP, EXP)
#define ENSURES(EXP) ASSERTMSG(#EXP, EXP)