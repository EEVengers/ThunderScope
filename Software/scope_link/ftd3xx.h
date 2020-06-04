//
//  ftd3xx.h
//  Scope
//
//  Copied by Daniel Vasile from FTDI Example Program on 2019-07-26.
//

#ifndef FTD3XX_H_DKFTHSPV
#define FTD3XX_H_DKFTHSPV

#ifdef __cplusplus
#include <cstddef>
#include <cstdbool>
#include <cstdint>
#include <cstdio>
#else
#include <stddef.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#endif

#if defined(_WIN32) || defined(_WIN64)

#include <windows.h>
#ifdef FTD3XX_EXPORTS
#define FTD3XX_API __declspec(dllexport)
#elif defined(FTD3XX_STATIC)
#define FTD3XX_API
#else
#define FTD3XX_API __declspec(dllimport)
#endif

#else /* _WIN32 || _WIN64 */

#define WINAPI
#ifndef FTD3XX_EXPORTS
#define FTD3XX_API
#else /* !FTD3XX_EXPORTS */
#define FTD3XX_API __attribute__((visibility("default")))
#endif /* FTD3XX_EXPORTS */

typedef uint16_t WORD;
typedef uint32_t DWORD;
typedef uint64_t DWORD64;
typedef uint32_t * LPDWORD;
typedef uint8_t BYTE;
typedef uint8_t UCHAR;
typedef uint16_t USHORT;
typedef USHORT * PUSHORT;
typedef unsigned int ULONG;
typedef uint16_t WCHAR;
typedef uint8_t * LPBYTE;
typedef bool BOOL;
typedef UCHAR *PUCHAR;
typedef ULONG *PULONG;
typedef const char * LPCSTR;

typedef void VOID;
typedef void * PVOID;
typedef void * LPVOID;
typedef char * PCHAR;
typedef void * HANDLE;

typedef struct _OVERLAPPED {
    DWORD Internal;
    DWORD InternalHigh;
    union {
        struct {
            DWORD Offset;
            DWORD OffsetHigh;
        };
        PVOID Pointer;
    };
    HANDLE hEvent;
} OVERLAPPED, *LPOVERLAPPED;

typedef struct _SECURITY_ATTRIBUTES {
    DWORD nLength;
    LPVOID lpSecurityDescriptor;
    BOOL bInheritHandle;
} SECURITY_ATTRIBUTES , *LPSECURITY_ATTRIBUTES;

#endif /* OTHER OS */

//
// Standard Descriptor Types
//
#define FT_DEVICE_DESCRIPTOR_TYPE                   0x01
#define FT_CONFIGURATION_DESCRIPTOR_TYPE            0x02
#define FT_STRING_DESCRIPTOR_TYPE                   0x03
#define FT_INTERFACE_DESCRIPTOR_TYPE                0x04

//
// Power Configuration
//
#define FT_IS_SELF_POWERED(bmAttributes)            ((bmAttributes) == 0x40)
#define FT_IS_BUS_POWERED(bmAttributes)             (!((bmAttributes) == 0x40))
#define FT_IS_REMOTE_WAKEUP_ENABLED(bmAttributes)   ((bmAttributes) == 0x20)

//
// Pipe Direction
//
#define FT_IS_READ_PIPE(ucEndpoint)                   ((ucEndpoint) & 0x80)
#define FT_IS_WRITE_PIPE(ucEndpoint)                  (!((ucEndpoint) & 0x80))

//
// Pipe type
//
#define FT_IS_BULK_PIPE(ucPipeType)                 ((ucPipeType) == 2)
#define FT_IS_INTERRUPT_PIPE(ucPipeType)            ((ucPipeType) == 3)
#define FT_IS_ISOCHRONOUS_PIPE(ucPipeType)          (0)

//
// Reserved pipes
//
#define FT_RESERVED_INTERFACE_INDEX                 0x0
#define FT_RESERVED_PIPE_INDEX_SESSION              0x0
#define FT_RESERVED_PIPE_INDEX_NOTIFICATION         0x1
#define FT_RESERVED_PIPE_SESSION                    0x1
#define FT_RESERVED_PIPE_NOTIFICATION               0x81

//
// Create flags
//
#define FT_OPEN_BY_SERIAL_NUMBER                    0x00000001
#define FT_OPEN_BY_DESCRIPTION                      0x00000002
#define FT_OPEN_BY_LOCATION                         0x00000004
#define FT_OPEN_BY_GUID                             0x00000008
#define FT_OPEN_BY_INDEX                            0x00000010

//
// ListDevices flags
//
#define FT_LIST_ALL                                 0x20000000
#define FT_LIST_BY_INDEX                            0x40000000
#define FT_LIST_NUMBER_ONLY                         0x80000000


//
// GPIO direction, value
//
#define FT_GPIO_DIRECTION_IN                        0
#define FT_GPIO_DIRECTION_OUT                       1
#define FT_GPIO_VALUE_LOW                           0
#define FT_GPIO_VALUE_HIGH                          1
#define FT_GPIO_0                                   0
#define FT_GPIO_1                                   1

typedef PVOID FT_HANDLE, *PFT_HANDLE;

enum _FT_STATUS {
    FT_OK,
    FT_INVALID_HANDLE,
    FT_DEVICE_NOT_FOUND,
    FT_DEVICE_NOT_OPENED,
    FT_IO_ERROR,
    FT_INSUFFICIENT_RESOURCES,
    FT_INVALID_PARAMETER, /* 6 */
    FT_INVALID_BAUD_RATE,
    FT_DEVICE_NOT_OPENED_FOR_ERASE,
    FT_DEVICE_NOT_OPENED_FOR_WRITE,
    FT_FAILED_TO_WRITE_DEVICE, /* 10 */
    FT_EEPROM_READ_FAILED,
    FT_EEPROM_WRITE_FAILED,
    FT_EEPROM_ERASE_FAILED,
    FT_EEPROM_NOT_PRESENT,
    FT_EEPROM_NOT_PROGRAMMED,
    FT_INVALID_ARGS,
    FT_NOT_SUPPORTED,
    
    FT_NO_MORE_ITEMS,
    FT_TIMEOUT, /* 19 */
    FT_OPERATION_ABORTED,
    FT_RESERVED_PIPE,
    FT_INVALID_CONTROL_REQUEST_DIRECTION,
    FT_INVALID_CONTROL_REQUEST_TYPE,
    FT_IO_PENDING,
    FT_IO_INCOMPLETE,
    FT_HANDLE_EOF,
    FT_BUSY,
    FT_NO_SYSTEM_RESOURCES,
    FT_DEVICE_LIST_NOT_READY,
    FT_DEVICE_NOT_CONNECTED,
    FT_INCORRECT_DEVICE_PATH,
    
    FT_OTHER_ERROR,
};

typedef ULONG FT_STATUS;
#define FT_SUCCESS(status) ((status) == FT_OK)
#define FT_FAILED(status)  ((status) != FT_OK)

typedef enum _FT_PIPE_TYPE {
    FTPipeTypeControl,
    FTPipeTypeIsochronous,
    FTPipeTypeBulk,
    FTPipeTypeInterrupt
} FT_PIPE_TYPE;

typedef struct _FT_COMMON_DESCRIPTOR {
    UCHAR bLength;
    UCHAR bDescriptorType;
} FT_COMMON_DESCRIPTOR, *PFT_COMMON_DESCRIPTOR;

typedef struct _FT_DEVICE_DESCRIPTOR{
    UCHAR   bLength;
    UCHAR   bDescriptorType;
    USHORT  bcdUSB;
    UCHAR   bDeviceClass;
    UCHAR   bDeviceSubClass;
    UCHAR   bDeviceProtocol;
    UCHAR   bMaxPacketSize0;
    USHORT  idVendor;
    USHORT  idProduct;
    USHORT  bcdDevice;
    UCHAR   iManufacturer;
    UCHAR   iProduct;
    UCHAR   iSerialNumber;
    UCHAR   bNumConfigurations;
} FT_DEVICE_DESCRIPTOR, *PFT_DEVICE_DESCRIPTOR;

typedef struct _FT_CONFIGURATION_DESCRIPTOR {
    UCHAR   bLength;
    UCHAR   bDescriptorType;
    USHORT  wTotalLength;
    UCHAR   bNumInterfaces;
    UCHAR   bConfigurationValue;
    UCHAR   iConfiguration;
    UCHAR   bmAttributes;
    UCHAR   MaxPower;
} FT_CONFIGURATION_DESCRIPTOR, *PFT_CONFIGURATION_DESCRIPTOR;

typedef struct _FT_INTERFACE_DESCRIPTOR {
    UCHAR   bLength;
    UCHAR   bDescriptorType;
    UCHAR   bInterfaceNumber;
    UCHAR   bAlternateSetting;
    UCHAR   bNumEndpoints;
    UCHAR   bInterfaceClass;
    UCHAR   bInterfaceSubClass;
    UCHAR   bInterfaceProtocol;
    UCHAR   iInterface;
} FT_INTERFACE_DESCRIPTOR, *PFT_INTERFACE_DESCRIPTOR;

typedef struct _FT_STRING_DESCRIPTOR {
    UCHAR   bLength;
    UCHAR   bDescriptorType;
    WCHAR   szString[256];
} FT_STRING_DESCRIPTOR, *PFT_STRING_DESCRIPTOR;

typedef struct _FT_PIPE_INFORMATION {
    FT_PIPE_TYPE    PipeType;
    UCHAR           PipeId;
    USHORT          MaximumPacketSize;
    UCHAR           Interval;
} FT_PIPE_INFORMATION, *PFT_PIPE_INFORMATION;

typedef struct _FT_SETUP_PACKET {
    UCHAR   RequestType;
    UCHAR   Request;
    USHORT  Value;
    USHORT  Index;
    USHORT  Length;
} FT_SETUP_PACKET, *PFT_SETUP_PACKET;

typedef enum _E_FT_NOTIFICATION_CALLBACK_TYPE {
    E_FT_NOTIFICATION_CALLBACK_TYPE_DATA,
    E_FT_NOTIFICATION_CALLBACK_TYPE_GPIO,
    E_FT_NOTIFICATION_CALLBACK_TYPE_INTERRUPT,
} E_FT_NOTIFICATION_CALLBACK_TYPE;

typedef struct _FT_NOTIFICATION_CALLBACK_INFO_DATA {
    ULONG ulRecvNotificationLength;
    UCHAR ucEndpointNo;
} FT_NOTIFICATION_CALLBACK_INFO_DATA;

typedef struct _FT_NOTIFICATION_CALLBACK_INFO_GPIO {
    BOOL bGPIO0;
    BOOL bGPIO1;
} FT_NOTIFICATION_CALLBACK_INFO_GPIO;

typedef VOID(*FT_NOTIFICATION_CALLBACK)(PVOID pvCallbackContext,
                                        E_FT_NOTIFICATION_CALLBACK_TYPE eCallbackType, PVOID pvCallbackInfo);

//
// Chip configuration - FlashEEPROMDetection
//
#define CONFIGURATION_FLASH_ROM_BIT_ROM                         0
#define CONFIGURATION_FLASH_ROM_BIT_MEMORY_NOTEXIST             1
#define CONFIGURATION_FLASH_ROM_BIT_CUSTOMDATA_INVALID          2
#define CONFIGURATION_FLASH_ROM_BIT_CUSTOMDATACHKSUM_INVALID    3
#define CONFIGURATION_FLASH_ROM_BIT_CUSTOM                      4
#define CONFIGURATION_FLASH_ROM_BIT_GPIO_INPUT                  5
#define CONFIGURATION_FLASH_ROM_BIT_GPIO_0                      6
#define CONFIGURATION_FLASH_ROM_BIT_GPIO_1                      7

//
// Chip configuration - Battery charging
//
#define CONFIGURATION_BATCHG_BIT_OFFSET_DCP          6 // Bit 6 and Bit 7
#define CONFIGURATION_BATCHG_BIT_OFFSET_CDP          4 // Bit 4 and Bit 5
#define CONFIGURATION_BATCHG_BIT_OFFSET_SDP          2 // Bit 2 and Bit 3
#define CONFIGURATION_BATCHG_BIT_OFFSET_DEF          0 // Bit 0 and Bit 1
#define CONFIGURATION_BATCHG_BIT_MASK                3 // 2 bits

//
// Chip configuration - FIFO Clock Speed
//
typedef enum {
    CONFIGURATION_FIFO_CLK_100,
    CONFIGURATION_FIFO_CLK_66,
    CONFIGURATION_FIFO_CLK_50,
    CONFIGURATION_FIFO_CLK_40,
} CONFIGURATION_FIFO_CLK;

//
// Chip configuration - FIFO Mode
//
typedef enum {
    CONFIGURATION_FIFO_MODE_245,
    CONFIGURATION_FIFO_MODE_600,
    CONFIGURATION_FIFO_MODE_COUNT,
} CONFIGURATION_FIFO_MODE;

//
// Chip configuration - Channel Configuration
//
typedef enum {
    CONFIGURATION_CHANNEL_CONFIG_4,
    CONFIGURATION_CHANNEL_CONFIG_2,
    CONFIGURATION_CHANNEL_CONFIG_1,
    CONFIGURATION_CHANNEL_CONFIG_1_OUTPIPE,
    CONFIGURATION_CHANNEL_CONFIG_1_INPIPE,
    CONFIGURATION_CHANNEL_CONFIG_COUNT,
} CONFIGURATION_CHANNEL_CONFIG;

//
// Chip configuration - Optional Feature Support
//
typedef enum {
    CONFIGURATION_OPTIONAL_FEATURE_DISABLEALL = 0,
    CONFIGURATION_OPTIONAL_FEATURE_ENABLEBATTERYCHARGING = 1,
    CONFIGURATION_OPTIONAL_FEATURE_DISABLECANCELSESSIONUNDERRUN = 2,
    CONFIGURATION_OPTIONAL_FEATURE_ENABLENOTIFICATIONMESSAGE_INCH1 = 4,
    CONFIGURATION_OPTIONAL_FEATURE_ENABLENOTIFICATIONMESSAGE_INCH2 = 8,
    CONFIGURATION_OPTIONAL_FEATURE_ENABLENOTIFICATIONMESSAGE_INCH3 = 0x10,
    CONFIGURATION_OPTIONAL_FEATURE_ENABLENOTIFICATIONMESSAGE_INCH4 = 0x20,
    CONFIGURATION_OPTIONAL_FEATURE_ENABLENOTIFICATIONMESSAGE_INCHALL = 0x3C,
    CONFIGURATION_OPTIONAL_FEATURE_DISABLEUNDERRUN_INCH1   = (0x1 << 6),
    CONFIGURATION_OPTIONAL_FEATURE_DISABLEUNDERRUN_INCH2   = (0x1 << 7),
    CONFIGURATION_OPTIONAL_FEATURE_DISABLEUNDERRUN_INCH3   = (0x1 << 8),
    CONFIGURATION_OPTIONAL_FEATURE_DISABLEUNDERRUN_INCH4   = (0x1 << 9),
    CONFIGURATION_OPTIONAL_FEATURE_DISABLEUNDERRUN_INCHALL = (0xF << 6),
} CONFIGURATION_OPTIONAL_FEATURE_SUPPORT;

//
// Chip configuration - Default values
//
#define CONFIGURATION_DEFAULT_VENDORID                          0x0403
#define CONFIGURATION_DEFAULT_PRODUCTID_600                     0x601E
#define CONFIGURATION_DEFAULT_PRODUCTID_601                     0x601F
#define CONFIGURATION_DEFAULT_POWERATTRIBUTES                   0xE0
#define CONFIGURATION_DEFAULT_POWERCONSUMPTION                  0x60
#define CONFIGURATION_DEFAULT_FIFOCLOCK \
CONFIGURATION_FIFO_CLK_100
#define CONFIGURATION_DEFAULT_FIFOMODE \
CONFIGURATION_FIFO_MODE_600
#define CONFIGURATION_DEFAULT_CHANNELCONFIG \
CONFIGURATION_CHANNEL_CONFIG_4
#define CONFIGURATION_DEFAULT_OPTIONALFEATURE \
CONFIGURATION_OPTIONAL_FEATURE_DISABLEALL
#define CONFIGURATION_DEFAULT_BATTERYCHARGING                   0xE4
#define CONFIGURATION_DEFAULT_BATTERYCHARGING_TYPE_DCP          0x3
#define CONFIGURATION_DEFAULT_BATTERYCHARGING_TYPE_CDP          0x2
#define CONFIGURATION_DEFAULT_BATTERYCHARGING_TYPE_SDP          0x1
#define CONFIGURATION_DEFAULT_BATTERYCHARGING_TYPE_OFF          0x0
#define CONFIGURATION_DEFAULT_FLASHDETECTION                    0x0
#define CONFIGURATION_DEFAULT_MSIOCONTROL                       0x10800
#define CONFIGURATION_DEFAULT_GPIOCONTROL                       0x0

//
//
// Chip configuration structure
//
typedef struct {
    // Device Descriptor
    USHORT       VendorID;
    USHORT       ProductID;
    
    // String Descriptors
    UCHAR        StringDescriptors[128];
    
    // Configuration Descriptor
    UCHAR        Reserved;
    UCHAR        PowerAttributes;
    USHORT       PowerConsumption;
    
    // Data Transfer Configuration
    UCHAR        reserved;
    UCHAR        FIFOClock;
    UCHAR        FIFOMode;
    UCHAR        ChannelConfig;
    
    // Optional Feature Support
    USHORT       OptionalFeatureSupport;
    UCHAR        BatteryChargingGPIOConfig;
    UCHAR        FlashEEPROMDetection;      // Read-only
    
    // MSIO and GPIO Configuration
    ULONG        MSIO_Control;
    ULONG        GPIO_Control;
} FT_60XCONFIGURATION, *PFT_60XCONFIGURATION;

//
// Device types
//
typedef enum _FT_DEVICE {
    FT_DEVICE_UNKNOWN = 3,
    FT_DEVICE_600 = 600,
    FT_DEVICE_601 = 601,
    FT_DEVICE_602 = 602,
    FT_DEVICE_603 = 603,
} FT_DEVICE;

//
// Device information
//
typedef enum _FT_FLAGS {
    FT_FLAGS_OPENED = 1,
    FT_FLAGS_HISPEED = 2,
    FT_FLAGS_SUPERSPEED = 4
} FT_FLAGS;

typedef struct _FT_DEVICE_LIST_INFO_NODE {
    ULONG Flags; // FT_FLAGS
    ULONG Type;
    ULONG ID;
    DWORD LocId;
    char SerialNumber[32];
    char Description[32];
    FT_HANDLE ftHandle;
} FT_DEVICE_LIST_INFO_NODE;

enum FT_GPIO_PULL {
    GPIO_PULL_50K_PD,
    GPIO_PULL_HIZ,
    GPIO_PULL_50K_PU,
    GPIO_PULL_DEFAULT = GPIO_PULL_50K_PD
};

enum FT_PIPE_DIRECTION {
    FT_PIPE_DIR_IN,
    FT_PIPE_DIR_OUT,
    FT_PIPE_DIR_COUNT,
};

struct FT_PIPE_TRANSFER_CONF {
    /* set to true PIPE is not used, default set to FALSE */
    BOOL fPipeNotUsed;
    
    /* Enable non thread safe transfer to increase throughput, set this flag
     * if guarantee only single thread access the pipe at a time, default
     * set to FALSE */
    BOOL fNonThreadSafeTransfer;
    
    /* Concurrent URB request number, 8 by default, set value < 2 to use
     * default value */
    BYTE bURBCount;
    
    /* 256 by default, set value < 2 to use default value */
    WORD wURBBufferCount;
    
    /* 32K by default, set value < 512 to use default value */
    DWORD dwURBBufferSize;
    
    /* 1G by default, used by FT600 and FT601 only, set 0 to use
     * default value */
    DWORD dwStreamingSize;
};

typedef struct _FT_TRANSFER_CONF {
    /* structure size: sizeof(FT_TRANSFER_CONF) */
    WORD wStructSize;
    
    /* Please refer to struture FT_PIPE_TRANSFER_CONF */
    struct FT_PIPE_TRANSFER_CONF pipe[FT_PIPE_DIR_COUNT];
    
    /* Stop reading next URB buffer if current buffer is not fully filled,
     * default set to FALSE */
    BOOL fStopReadingOnURBUnderrun;
    
    /* Enable Bit Bang Mode */
    BOOL fBitBangMode;
    
    /* Do not flush device side residue buffer after reopen the
     * device, default set to FALSE */
    BOOL fKeepDeviceSideBufferAfterReopen;
} FT_TRANSFER_CONF;

#ifdef __cplusplus
extern "C" {
#endif
    
    /**********************************************************************
     *                          Linux only APIs                           *
     **********************************************************************/
    
    /* Set transfer parameters for each FIFO channel
     * Must be called before FT_Create is called. Need to be called again
     * after FT_Close(), otherwise default parameters will be used.
     *
     * Default value will be used for each FIFO channel if this function
     * is not been called. Please refer to structure defines for default
     * value.
     *
     * pConf: Please refer to structure FT_TRANSFER_CONF
     * dwFifoID: FIFO interface ID. Valid values are 0-3 which represents
     *           FIFO channel 1-4 for FT600 and FT601 */
    FTD3XX_API FT_STATUS WINAPI FT_SetTransferParams(
                                                     FT_TRANSFER_CONF *pConf,
                                                     DWORD dwFifoID);
    
    /* ReadPipe with timeout
     *
     * dwFifoID: FIFO interface ID. Valid values are 0-3 which represents
     *           FIFO channel 1-4 for FT600 and FT601
     * dwTimeoutInMs: timeout in milliseconds, 0 means return immediately
     *           if no data */
    FTD3XX_API FT_STATUS WINAPI FT_ReadPipeEx(
                                              FT_HANDLE ftHandle,
                                              UCHAR ucFifoID,
                                              PUCHAR pucBuffer,
                                              ULONG ulBufferLength,
                                              PULONG pulBytesTransferred,
                                              DWORD dwTimeoutInMs);
    
    /* WritePipe with timeout
     *
     * dwFifoID: FIFO interface ID. Valid values are 0-3 which represents
     *           FIFO channel 1-4 for FT600 and FT601
     * dwTimeoutInMs: timeout in milliseconds, 0 means return immediately
     *           if no data */
    FTD3XX_API FT_STATUS WINAPI FT_WritePipeEx(
                                               FT_HANDLE ftHandle,
                                               UCHAR ucFifoID,
                                               PUCHAR pucBuffer,
                                               ULONG ulBufferLength,
                                               PULONG pulBytesTransferred,
                                               DWORD dwTimeoutInMs);
    
    /* Get total unread buffer length in library's queue
     *
     * dwFifoID: FIFO interface ID. Valid values are 0-3 which represents
     *           FIFO channel 1-4 for FT600 and FT601 */
    FTD3XX_API FT_STATUS WINAPI FT_GetReadQueueStatus(
                                                      FT_HANDLE ftHandle,
                                                      UCHAR ucFifoID,
                                                      LPDWORD lpdwAmountInQueue);
    
    /* Get total unsent buffer length in library's queue
     *
     * dwFifoID: FIFO interface ID. Valid values are 0-3 which represents
     *           FIFO channel 1-4 for FT600 and FT601 */
    FTD3XX_API FT_STATUS WINAPI FT_GetWriteQueueStatus(
                                                       FT_HANDLE ftHandle,
                                                       UCHAR ucFifoID,
                                                       LPDWORD lpdwAmountInQueue);
    
    /* Read unsent buffer for OUT pipe
     * Set byBuffer to NULL first to close the pipe to get accurate buffer
     * length, allocate buffer with the length, then call this function
     * again with the allocated buffer to read out all buffers
     *
     * dwFifoID: FIFO interface ID. Valid values are 0-3 which represents
     *           FIFO channel 1-4 for FT600 and FT601
     * byBuffer: User allocated buffer
     * lpdwBufferLength: Pointer to receive the size of buffer if byBuffer
     *                   is NULL. Size of buffer if byBuffer is not NULL. */
    FTD3XX_API FT_STATUS WINAPI FT_GetUnsentBuffer(
                                                   FT_HANDLE ftHandle,
                                                   UCHAR ucFifoID,
                                                   BYTE *byBuffer,
                                                   LPDWORD lpdwBufferLength);
    
    FTD3XX_API FT_STATUS WINAPI FT_SetPipeTimeout(
                                                  FT_HANDLE ftHandle,
                                                  UCHAR ucEndpoint,
                                                  DWORD dwTimeoutInMs
                                                  );
    
    FTD3XX_API FT_STATUS WINAPI FT_CreateDeviceInfoList(
                                                        LPDWORD lpdwNumDevs
                                                        );
    
    FTD3XX_API FT_STATUS WINAPI FT_GetDeviceInfoList(
                                                     FT_DEVICE_LIST_INFO_NODE *ptDest,
                                                     LPDWORD lpdwNumDevs
                                                     );
    
    FTD3XX_API FT_STATUS WINAPI FT_ListDevices(
                                               PVOID pArg1,
                                               PVOID pArg2,
                                               DWORD Flags
                                               );
    
    FTD3XX_API FT_STATUS WINAPI FT_Create(
                                          PVOID pvArg,
                                          DWORD dwFlags,
                                          FT_HANDLE *pftHandle
                                          );
    
    FTD3XX_API FT_STATUS WINAPI FT_Close(
                                         FT_HANDLE ftHandle);
    
    FTD3XX_API FT_STATUS WINAPI FT_GetVIDPID(
                                             FT_HANDLE ftHandle,
                                             PUSHORT puwVID,
                                             PUSHORT puwPID
                                             );
    
    FTD3XX_API FT_STATUS WINAPI FT_WritePipe(
                                             FT_HANDLE ftHandle,
                                             UCHAR ucEndpoint,
                                             PUCHAR pucBuffer,
                                             ULONG ulBufferLength,
                                             PULONG pulBytesTransferred,
                                             LPOVERLAPPED pOverlapped
                                             );
    
    FTD3XX_API FT_STATUS WINAPI FT_ReadPipe(
                                            FT_HANDLE ftHandle,
                                            UCHAR ucEndpoint,
                                            PUCHAR pucBuffer,
                                            ULONG ulBufferLength,
                                            PULONG pulBytesTransferred,
                                            LPOVERLAPPED pOverlapped
                                            );
    
    FTD3XX_API FT_STATUS WINAPI FT_GetOverlappedResult(
                                                       FT_HANDLE ftHandle,
                                                       LPOVERLAPPED pOverlapped,
                                                       PULONG pulBytesTransferred,
                                                       BOOL bWait
                                                       );
    
    FTD3XX_API FT_STATUS  WINAPI FT_InitializeOverlapped(
                                                         FT_HANDLE ftHandle,
                                                         LPOVERLAPPED pOverlapped
                                                         );
    
    FTD3XX_API FT_STATUS  WINAPI FT_ReleaseOverlapped(
                                                      FT_HANDLE ftHandle,
                                                      LPOVERLAPPED pOverlapped
                                                      );
    
    FTD3XX_API FT_STATUS WINAPI FT_SetStreamPipe(
                                                 FT_HANDLE ftHandle,
                                                 BOOL bAllWritePipes,
                                                 BOOL bAllReadPipes,
                                                 UCHAR ucEndpoint,
                                                 ULONG ulStreamSize
                                                 );
    
    FTD3XX_API FT_STATUS WINAPI FT_ClearStreamPipe(
                                                   FT_HANDLE ftHandle,
                                                   BOOL bAllWritePipes,
                                                   BOOL bAllReadPipes,
                                                   UCHAR ucEndpoint
                                                   );
    
    FTD3XX_API FT_STATUS WINAPI FT_FlushPipe(
                                             FT_HANDLE ftHandle,
                                             UCHAR ucEndpoint
                                             );
    
    FTD3XX_API FT_STATUS WINAPI FT_AbortPipe(
                                             FT_HANDLE ftHandle,
                                             UCHAR ucEndpoint
                                             );
    
    FTD3XX_API FT_STATUS WINAPI FT_GetDeviceDescriptor(
                                                       FT_HANDLE ftHandle,
                                                       PFT_DEVICE_DESCRIPTOR ptDescriptor
                                                       );
    
    FTD3XX_API FT_STATUS WINAPI FT_GetConfigurationDescriptor(
                                                              FT_HANDLE ftHandle,
                                                              PFT_CONFIGURATION_DESCRIPTOR ptDescriptor
                                                              );
    
    FTD3XX_API FT_STATUS WINAPI FT_GetInterfaceDescriptor(
                                                          FT_HANDLE ftHandle,
                                                          UCHAR ucInterfaceIndex,
                                                          PFT_INTERFACE_DESCRIPTOR ptDescriptor
                                                          );
    
    FTD3XX_API FT_STATUS WINAPI FT_GetPipeInformation(
                                                      FT_HANDLE ftHandle,
                                                      UCHAR ucInterfaceIndex,
                                                      UCHAR ucEndpoint,
                                                      PFT_PIPE_INFORMATION ptPipeInformation
                                                      );
    
    FTD3XX_API FT_STATUS WINAPI FT_GetStringDescriptor(
                                                       FT_HANDLE ftHandle,
                                                       UCHAR ucStringIndex,
                                                       PFT_STRING_DESCRIPTOR ptDescriptor
                                                       );
    
    FTD3XX_API FT_STATUS WINAPI FT_GetDescriptor(
                                                 FT_HANDLE ftHandle,
                                                 UCHAR ucDescriptorType,
                                                 UCHAR ucIndex,
                                                 PUCHAR pucBuffer,
                                                 ULONG ulBufferLength,
                                                 PULONG pulLengthTransferred
                                                 );
    
    FTD3XX_API FT_STATUS WINAPI FT_ControlTransfer(
                                                   FT_HANDLE ftHandle,
                                                   FT_SETUP_PACKET tSetupPacket,
                                                   PUCHAR pucBuffer,
                                                   ULONG ulBufferLength,
                                                   PULONG pulLengthTransferred
                                                   );
    
    FTD3XX_API FT_STATUS WINAPI FT_SetGPIO(
                                           FT_HANDLE ftHandle,
                                           UCHAR ucDirection,
                                           UCHAR ucValue
                                           );
    
    FTD3XX_API FT_STATUS WINAPI FT_GetGPIO(
                                           FT_HANDLE ftHandle,
                                           UCHAR ucDirection,
                                           FT_NOTIFICATION_CALLBACK pCallback,
                                           PVOID pvCallbackContext,
                                           USHORT uwCallbackLatency
                                           );
    
    FTD3XX_API FT_STATUS WINAPI FT_SetNotificationCallback(
                                                           FT_HANDLE ftHandle,
                                                           FT_NOTIFICATION_CALLBACK pCallback,
                                                           PVOID pvCallbackContext
                                                           );
    
    FTD3XX_API VOID WINAPI FT_ClearNotificationCallback(
                                                        FT_HANDLE ftHandle
                                                        );
    
    FTD3XX_API FT_STATUS WINAPI FT_GetChipConfiguration(
                                                        FT_HANDLE ftHandle,
                                                        PVOID pvConfiguration
                                                        );
    
    FTD3XX_API FT_STATUS WINAPI FT_SetChipConfiguration(
                                                        FT_HANDLE ftHandle,
                                                        PVOID pvConfiguration
                                                        );
    
    FTD3XX_API FT_STATUS WINAPI FT_GetFirmwareVersion(
                                                      FT_HANDLE ftHandle,
                                                      PULONG pulFirmwareVersion
                                                      );
    
    FTD3XX_API FT_STATUS WINAPI FT_ResetDevicePort(
                                                   FT_HANDLE ftHandle
                                                   );
    
    FTD3XX_API FT_STATUS WINAPI FT_CycleDevicePort(
                                                   FT_HANDLE ftHandle
                                                   );
    
    FTD3XX_API FT_STATUS WINAPI FT_GetDeviceInfoDetail(
                                                       DWORD dwIndex,
                                                       LPDWORD lpdwFlags,
                                                       LPDWORD lpdwType,
                                                       LPDWORD lpdwID,
                                                       LPDWORD lpdwLocId,
                                                       LPVOID lpSerialNumber,
                                                       LPVOID lpDescription,
                                                       FT_HANDLE *pftHandle
                                                       );
    
    FTD3XX_API FT_STATUS WINAPI FT_IsDevicePath(
                                                FT_HANDLE ftHandle,
                                                LPCSTR pucDevicePath
                                                );
    
    FTD3XX_API FT_STATUS WINAPI FT_GetDriverVersion(
                                                    FT_HANDLE ftHandle,
                                                    LPDWORD lpdwVersion
                                                    );
    
    FTD3XX_API FT_STATUS WINAPI FT_GetLibraryVersion(
                                                     LPDWORD lpdwVersion
                                                     );
    
    /* Enable GPIOs
     * Each bit represents one GPIO setting, GPIO0-GPIO2 from LSB to MSB
     *
     * dwMask: set bit to 0 to skip the GPIO, 1 to enable the GPIO
     * dwDirection: set bit to 0 for input, 1 for output */
    FTD3XX_API FT_STATUS WINAPI FT_EnableGPIO(
                                              FT_HANDLE ftHandle,
                                              DWORD dwMask,
                                              DWORD dwDirection
                                              );
    
    /* Set GPIO level
     * Each bit represents one GPIO setting, GPIO0-GPIO2 from LSB to MSB
     *
     * dwMask: set bit to 0 to skip the GPIO, 1 to enable the GPIO
     * dwDirection: set bit to 0 for low, 1 for high */
    FTD3XX_API FT_STATUS WINAPI FT_WriteGPIO(
                                             FT_HANDLE ftHandle,
                                             DWORD dwMask,
                                             DWORD dwLevel
                                             );
    
    /* Get level of all GPIOs
     * Each bit represents one GPIO setting, GPIO0-GPIO2, RD_N, OE_N from
     * LSB to MSB */
    FTD3XX_API FT_STATUS WINAPI FT_ReadGPIO(
                                            FT_HANDLE ftHandle,
                                            DWORD *pdwData
                                            );
    
    /* Set GPIO internal pull resisters
     * dwMask: Each bit represents one GPIO setting, GPIO0-GPIO2 from
     * LSB to MSB
     * dwPull: Each two bits represents one GPIO setting, GPIO0-GPIO2 from
     * LSB to MSB
     *
     * dwMask: set bit to 0 to skip the GPIO, 1 to enable the GPIO
     * dwPull: refer to enum FT_GPIO_PULL */
    FTD3XX_API FT_STATUS WINAPI FT_SetGPIOPull(
                                               FT_HANDLE ftHandle,
                                               DWORD dwMask,
                                               DWORD dwPull
                                               );
    
#ifdef __cplusplus
}
#endif

#endif /* end of include guard: FTD3XX_H_DKFTHSPV */
