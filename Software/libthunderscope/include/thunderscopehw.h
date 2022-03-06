#ifndef LIBTHUNDERSCOPEHW_THUNDERSCOPEHW_H
#define LIBTHUNDERSCOPEHW_THUNDERSCOPEHW_H

#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

struct ThunderScopeHW;

enum ThunderScopeHWStatus {
	THUNDERSCOPEHW_STATUS_OK = 10000,
	THUNDERSCOPEHW_STATUS_BUFFER_NOT_ALIGNED,
	THUNDERSCOPEHW_STATUS_MEMORY_FULL,
	THUNDERSCOPEHW_STATUS_PIPELINE_OVERFLOW,
	THUNDERSCOPEHW_STATUS_FIFO_OVERFLOW,
	THUNDERSCOPEHW_STATUS_DATAMOVER_ERROR,
	THUNDERSCOPEHW_STATUS_NO_CHANNELS,
	THUNDERSCOPEHW_STATUS_INVALID_VDIV,
	THUNDERSCOPEHW_STATUS_INVALID_BANDWIDTH,
	THUNDERSCOPEHW_STATUS_ALREADY_CONNECTED,
	THUNDERSCOPEHW_STATUS_NOT_CONNECTED,
	THUNDERSCOPEHW_STATUS_OPEN_FAILED,
	THUNDERSCOPEHW_STATUS_READ_ERROR,
	THUNDERSCOPEHW_STATUS_WRITE_ERROR,
	THUNDERSCOPEHW_STATUS_ALREADY_STARTED,
	THUNDERSCOPEHW_STATUS_NOT_STARTED,
	THUNDERSCOPEHW_STATUS_ALREADY_STOPPED,
	THUNDERSCOPEHW_STATUS_OFFSET_TOO_LOW,
	THUNDERSCOPEHW_STATUS_OFFSET_TOO_HIGH,
};

// Return's number of scopes.
int thunderscopehw_scan(uint64_t* scope_ids, int max_ids);

struct ThunderScopeHW* thunderscopehw_create();
enum ThunderScopeHWStatus thunderscopehw_destroy(struct ThunderScopeHW* ts);

enum ThunderScopeHWStatus thunderscopehw_connect(struct ThunderScopeHW* ts, uint64_t scope_id);
enum ThunderScopeHWStatus thunderscopehw_disconnect(struct ThunderScopeHW* ts);

enum ThunderScopeHWStatus thunderscopehw_enable_channel(struct ThunderScopeHW *ts, int channel);
enum ThunderScopeHWStatus thunderscopehw_disable_channel(struct ThunderScopeHW *ts, int channel);
enum ThunderScopeHWStatus thunderscopehw_ac_couple(struct ThunderScopeHW *ts, int channel);
enum ThunderScopeHWStatus thunderscopehw_dc_couple(struct ThunderScopeHW *ts, int channel);
enum ThunderScopeHWStatus thunderscopehw_voltage_division_set(struct ThunderScopeHW *ts, int channel, int voltage_div);
enum ThunderScopeHWStatus thunderscopehw_voltage_offset_set(struct ThunderScopeHW *ts, int channel, double voltage);
enum ThunderScopeHWStatus thunderscopehw_bandwidth_set(struct ThunderScopeHW *ts, int channel, int bandwidth);

enum ThunderScopeHWStatus thunderscopehw_start(struct ThunderScopeHW* ts);
enum ThunderScopeHWStatus thunderscopehw_stop(struct ThunderScopeHW* ts);
enum ThunderScopeHWStatus thunderscopehw_read(struct ThunderScopeHW* ts, uint8_t* data, int64_t length);
int64_t thunderscopehw_available(struct ThunderScopeHW* ts);


const char* thunderscopehw_describe_error(enum ThunderScopeHWStatus err);

#endif  // LIBTHUNDERSCOPEHW_THUNDERSCOPEHW_H
