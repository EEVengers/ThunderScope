//
//  common.h
//  Scope
//
//  Copied by Daniel Vasile from FTDI Example Program on 2019-07-26.
//

#ifndef COMMON_H_6J30YQFP
#define COMMON_H_6J30YQFP
#include <iostream>
#include <atomic>
#include <csignal>
#include <cstring>
#include <cstdlib>
#include <thread>
#include "ftd3xx.h"

using namespace std;

static bool do_exit;
static atomic_int tx_count;
static atomic_int rx_count;
static uint8_t in_ch_cnt;
static uint8_t out_ch_cnt;

static void sig_hdlr(int signum)
{
    switch (signum) {
        case SIGINT:
            do_exit = true;
            break;
    }
}

static void register_signals(void)
{
    signal(SIGINT, sig_hdlr);
}

static void get_version(void)
{
    DWORD dwVersion;
    
    FT_GetDriverVersion(NULL, &dwVersion);
    printf("Driver version:%d.%d.%d\r\n", dwVersion >> 24,
           (uint8_t)(dwVersion >> 16), dwVersion & 0xFFFF);
    
    FT_GetLibraryVersion(&dwVersion);
    printf("Library version:%d.%d.%d\r\n", dwVersion >> 24,
           (uint8_t)(dwVersion >> 16), dwVersion & 0xFFFF);
}

#if defined(_WIN32) || defined(_WIN64)
#define turn_off_thread_safe()
#else /* _WIN32 || _WIN64 */
static void turn_off_thread_safe(void)
{
    FT_TRANSFER_CONF conf;
    
    memset(&conf, 0, sizeof(FT_TRANSFER_CONF));
    conf.wStructSize = sizeof(FT_TRANSFER_CONF);
    conf.pipe[FT_PIPE_DIR_IN].fNonThreadSafeTransfer = true;
    conf.pipe[FT_PIPE_DIR_OUT].fNonThreadSafeTransfer = true;
    for (DWORD i = 0; i < 4; i++)
        FT_SetTransferParams(&conf, i);
}
#endif /* !_WIN32 && !_WIN64 */
static bool get_device_lists(int timeout_ms)
{
    DWORD count;
    FT_DEVICE_LIST_INFO_NODE nodes[16];
    
    chrono::steady_clock::time_point const timeout =
    chrono::steady_clock::now() +
    chrono::milliseconds(timeout_ms);
    
    do {
        if (FT_OK == FT_CreateDeviceInfoList(&count))
            break;
        this_thread::sleep_for(chrono::microseconds(10));
    } while (chrono::steady_clock::now() < timeout);
    printf("Total %u device(s)\r\n", count);
    if (!count)
        return false;
    
    if (FT_OK != FT_GetDeviceInfoList(nodes, &count))
        return false;
    return true;
}

static void show_throughput(FT_HANDLE handle)
{
    auto next = chrono::steady_clock::now() + chrono::seconds(1);;
    (void)handle;
    
    while (!do_exit) {
        this_thread::sleep_until(next);
        next += chrono::seconds(1);
        
        int tx = tx_count.exchange(0);
        int rx = rx_count.exchange(0);
        
        printf("TX:%.2fMiB/s RX:%.2fMiB/s, total:%.2fMiB\r\n",
               (float)tx/1000/1000, (float)rx/1000/1000,
               (float)(tx+ rx)/1000/1000);
    }
}


static void set_ft600_optional_features(USHORT *features)
{
    USHORT flag;
    
    flag = CONFIGURATION_OPTIONAL_FEATURE_ENABLENOTIFICATIONMESSAGE_INCHALL;
    if (flag & *features) {
        *features &= ~flag;
        printf("Notification feature is not supported\r\n");
    }
    
    flag = CONFIGURATION_OPTIONAL_FEATURE_DISABLECANCELSESSIONUNDERRUN;
    if (!(flag & *features)) {
        *features |= flag;
        printf("Cancel session on underrun is not supported\r\n");
    }
    
    flag = CONFIGURATION_OPTIONAL_FEATURE_DISABLEUNDERRUN_INCHALL;
    if (!(flag & *features)) {
        *features |= flag;
        printf("Set 'disable underrun' to get better performance\r\n");
    }
}

static void set_ft600_channels(UCHAR *channels, bool is_600_mode)
{
    if (in_ch_cnt == 1 && out_ch_cnt == 0) {
        *channels = CONFIGURATION_CHANNEL_CONFIG_1_INPIPE;
    } else if (in_ch_cnt == 0 && out_ch_cnt == 1)
        *channels = CONFIGURATION_CHANNEL_CONFIG_1_OUTPIPE;
    else {
        UCHAR total = in_ch_cnt < out_ch_cnt ? out_ch_cnt : in_ch_cnt;
        
        if (total == 4)
            *channels = CONFIGURATION_CHANNEL_CONFIG_4;
        else if (total == 2)
            *channels = CONFIGURATION_CHANNEL_CONFIG_2;
        else
            *channels = CONFIGURATION_CHANNEL_CONFIG_1;
        
        if (!is_600_mode && total > 1) {
            printf("245 mode only support single channel\r\n");
            exit (-1);
        }
    }
}

static void set_ft600_channel_config(FT_60XCONFIGURATION *cfg,
                                     CONFIGURATION_FIFO_CLK clock, bool is_600_mode)
{
    cfg->FIFOClock = clock;
    cfg->FIFOMode = is_600_mode ? CONFIGURATION_FIFO_MODE_600 :
    CONFIGURATION_FIFO_MODE_245;
    set_ft600_optional_features(&cfg->OptionalFeatureSupport);
    set_ft600_channels(&cfg->ChannelConfig, is_600_mode);
    
    const char *const CH_STR[] = {
        "4CH",
        "2CH",
        "1CH",
        "1CH OUT",
        "1CH IN",
    };
    const char *const FIFO_STR[] = {
        "FT245",
        "FT600",
    };
    printf("%s %s @ 100MHz\r\n",
           CH_STR[cfg->ChannelConfig], FIFO_STR[cfg->FIFOMode]);
}

static bool set_channel_config(bool is_600_mode, CONFIGURATION_FIFO_CLK clock)
{
    FT_HANDLE handle = NULL;
    DWORD dwType = FT_DEVICE_UNKNOWN;
    
    FT_Create(0, FT_OPEN_BY_INDEX, &handle);
    if (!handle)
        return false;
    FT_GetDeviceInfoDetail(0, NULL, &dwType, NULL, NULL, NULL, NULL, NULL);
    
    union CHIP_CONFIGURATION {
        FT_60XCONFIGURATION ft600;
    } old_cfg, new_cfg;
    
    if (FT_OK != FT_GetChipConfiguration(handle, &old_cfg)) {
        printf("Failed to get chip conf\r\n");
        return false;
    }
    memcpy(&new_cfg, &old_cfg, sizeof(union CHIP_CONFIGURATION));
    
    if (dwType == FT_DEVICE_600 || dwType == FT_DEVICE_601)
        set_ft600_channel_config(&new_cfg.ft600, clock, is_600_mode);
    else
        return false;
    if (memcmp(&new_cfg, &old_cfg, sizeof(union CHIP_CONFIGURATION))) {
        if (FT_OK != FT_SetChipConfiguration(handle, &new_cfg)) {
            printf("Failed to set chip conf\r\n");
            exit(-1);
        } else {
            printf("Configuration changed\r\n");
            this_thread::sleep_for(chrono::seconds(1));
            get_device_lists(6000);
        }
    }
    FT_Close(handle);
    return true;
}

#endif /* end of include guard: COMMON_H_6J30YQFP */
