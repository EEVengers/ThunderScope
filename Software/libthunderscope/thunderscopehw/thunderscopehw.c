#include <stdlib.h>

#include "thunderscopehw_private.h"

#ifndef WIN32
#include <unistd.h>
#endif

struct ThunderScopeHW* thunderscopehw_create()
{
	struct ThunderScopeHW* ts;
	ts = (struct ThunderScopeHW*)malloc(sizeof(struct ThunderScopeHW));
	if (!ts) return ts;

	ts->connected = false;
	ts->board_en = false;
	ts->adc_en = false;
	ts->pll_en = false;
	ts->datamover_en = false;
	ts->fpga_adc_en = false;

	for (int i = 0; i < THUNDERSCOPEHW_CHANNELS; i++) {
		ts->channels[i].on = false;
		ts->channels[i].vdiv = 1000;
		ts->channels[i].bw = 350;
		ts->channels[i].voffset = 0.0;
		ts->channels[i].coupling = THUNDERSCOPEHW_COUPLING_DC;
	}

	ts->user_handle = THUNDERSCOPEHW_INVALID_HANDLE_VALUE;
	ts->c2h0_handle = THUNDERSCOPEHW_INVALID_HANDLE_VALUE;
	ts->buffer_head = 0;
	ts->buffer_tail = 0;
	ts->ram_size_pages = 0x10000;

	return ts;
}

enum ThunderScopeHWStatus thunderscopehw_destroy(struct ThunderScopeHW* ts)
{
	THUNDERSCOPEHW_RUN(stop(ts));
	return thunderscopehw_disconnect(ts);
}


enum ThunderScopeHWStatus thunderscopehw_enable_channel(struct ThunderScopeHW *ts, int channel)
{
	ts->channels[channel].on = true;
	return thunderscopehw_configure_channel(ts, channel);
}

enum ThunderScopeHWStatus thunderscopehw_disable_channel(struct ThunderScopeHW *ts, int channel)
{
	ts->channels[channel].on = false;
	return thunderscopehw_configure_channel(ts, channel);
}

enum ThunderScopeHWStatus thunderscopehw_ac_couple(struct ThunderScopeHW *ts, int channel)
{
	ts->channels[channel].coupling = THUNDERSCOPEHW_COUPLING_AC;
	return thunderscopehw_configure_channel(ts, channel);
}

enum ThunderScopeHWStatus thunderscopehw_dc_couple(struct ThunderScopeHW *ts, int channel)
{
	ts->channels[channel].coupling = THUNDERSCOPEHW_COUPLING_DC;
	return thunderscopehw_configure_channel(ts, channel);
}

enum ThunderScopeHWStatus thunderscopehw_voltage_division_set(struct ThunderScopeHW *ts, int channel, int voltage_div)
{
	ts->channels[channel].vdiv = voltage_div;
	return thunderscopehw_configure_channel(ts, channel);
}

enum ThunderScopeHWStatus thunderscopehw_voltage_offset_set(struct ThunderScopeHW *ts, int channel, double voltage)
{
	ts->channels[channel].voffset = voltage;
	return thunderscopehw_configure_channel(ts, channel);
}

enum ThunderScopeHWStatus thunderscopehw_bandwidth_set(struct ThunderScopeHW *ts, int channel, int bandwidth)
{
	ts->channels[channel].bw = bandwidth;
	return thunderscopehw_configure_channel(ts, channel);
}

enum ThunderScopeHWStatus thunderscopehw_start(struct ThunderScopeHW* ts) {
	if (!ts->connected)
		return THUNDERSCOPEHW_STATUS_NOT_CONNECTED;
	if (ts->datamover_en)
		return THUNDERSCOPEHW_STATUS_ALREADY_STARTED;
	ts->datamover_en = true;
	ts->fpga_adc_en = true;
	ts->buffer_head = 0;
	ts->buffer_tail = 0;
	return thunderscopehw_set_datamover_reg(ts);
}

enum ThunderScopeHWStatus thunderscopehw_stop(struct ThunderScopeHW* ts) {
	if (!ts->datamover_en)
		return THUNDERSCOPEHW_STATUS_ALREADY_STOPPED;
	ts->datamover_en = false;
	THUNDERSCOPEHW_RUN(set_datamover_reg(ts));
#ifdef WIN32
	Sleep(5);
#else
	usleep(5000);
#endif
	ts->fpga_adc_en = false;
	return thunderscopehw_set_datamover_reg(ts);
}

#include <stdio.h>

static enum ThunderScopeHWStatus thunderscopehw_update_buffer_head(struct ThunderScopeHW* ts)
{
	// 1 page = 4k
	uint32_t transfer_counter = thunderscopehw_read32(ts, DATAMOVER_TRANSFER_COUNTER);
	uint32_t error_code = transfer_counter >> 30;
	if (error_code & 2)
		return THUNDERSCOPEHW_STATUS_DATAMOVER_ERROR;

	if (error_code & 1)
		return THUNDERSCOPEHW_STATUS_FIFO_OVERFLOW;

	uint32_t overflow_cycles = (transfer_counter >> 16) & 0x3FFF;
	if (overflow_cycles)
		return THUNDERSCOPEHW_STATUS_PIPELINE_OVERFLOW;

	uint32_t pages_moved = transfer_counter & 0xFFFF;
	uint64_t buffer_head = (ts->buffer_head & ~0xFFFFULL) | pages_moved;
	if (buffer_head < ts->buffer_head)
		buffer_head += 0x10000ULL;

	ts->buffer_head = buffer_head;

	uint64_t pages_available = ts->buffer_head - ts->buffer_tail;
	if (pages_available >= ts->ram_size_pages)
		return THUNDERSCOPEHW_STATUS_MEMORY_FULL;

	return THUNDERSCOPEHW_STATUS_OK;
}

int64_t thunderscopehw_available(struct ThunderScopeHW* ts) {
	THUNDERSCOPEHW_RUN(update_buffer_head(ts));
	return (ts->buffer_head - ts->buffer_tail) << 12;
}

enum ThunderScopeHWStatus thunderscopehw_read(struct ThunderScopeHW* ts, uint8_t* data, int64_t length)
{
	if (!ts->datamover_en)
		return THUNDERSCOPEHW_STATUS_NOT_STARTED;

	// Buffer data must be aligned to 4096
	if (0xFFF & (ptrdiff_t)data) {
		return THUNDERSCOPEHW_STATUS_BUFFER_NOT_ALIGNED;
	}
	// Align length to 4096.
	length &=~ 0xFFFULL;

	THUNDERSCOPEHW_RUN(update_buffer_head(ts));

	while (length) {
		uint64_t pages_available = ts->buffer_head - ts->buffer_tail;
		if (pages_available == 0) {
#ifdef WIN32
			Sleep(1);
#else
			usleep(1500);
#endif
			THUNDERSCOPEHW_RUN(update_buffer_head(ts));
			continue;
		}
		uint64_t pages_to_read = length >> 12;
		if (pages_to_read > pages_available) pages_to_read = pages_available;
		uint64_t buffer_read_pos = ts->buffer_tail % ts->ram_size_pages;
		if (pages_to_read > ts->ram_size_pages - buffer_read_pos) pages_to_read = ts->ram_size_pages - buffer_read_pos;
		if (pages_to_read > ts->ram_size_pages / 4) pages_to_read = ts->ram_size_pages / 4;

		THUNDERSCOPEHW_RUN(read_handle(ts, ts->c2h0_handle, data, buffer_read_pos << 12, pages_to_read << 12));

		data += pages_to_read << 12;
		length -= pages_to_read << 12;

		// Update buffer head and calculate overflow BEFORE
		// updating buffer tail as it is possible
		// that a buffer overflow occured while we were reading.
		THUNDERSCOPEHW_RUN(update_buffer_head(ts));

		ts->buffer_tail += pages_to_read;
	}

	return THUNDERSCOPEHW_STATUS_OK;
}


const char* thunderscopehw_describe_error(enum ThunderScopeHWStatus err) {
	switch (err) {
	case THUNDERSCOPEHW_STATUS_OK:
		return "ok";
	case THUNDERSCOPEHW_STATUS_BUFFER_NOT_ALIGNED:
		return "buffer not aligned";
	case THUNDERSCOPEHW_STATUS_MEMORY_FULL:
		return "memory full";
	case THUNDERSCOPEHW_STATUS_PIPELINE_OVERFLOW:
		return "pipeline overflow";
	case THUNDERSCOPEHW_STATUS_FIFO_OVERFLOW:
		return "fifo overflow";
	case THUNDERSCOPEHW_STATUS_DATAMOVER_ERROR:
		return "datamover error";
	case THUNDERSCOPEHW_STATUS_NO_CHANNELS:
		return "no channels";
	case THUNDERSCOPEHW_STATUS_INVALID_VDIV:
		return "invalid vdiv";
	case THUNDERSCOPEHW_STATUS_INVALID_BANDWIDTH:
		return "invalid bandwidth";
	case THUNDERSCOPEHW_STATUS_ALREADY_CONNECTED:
		return "already connected";
	case THUNDERSCOPEHW_STATUS_NOT_CONNECTED:
		return "not connect";
	case THUNDERSCOPEHW_STATUS_OPEN_FAILED:
		return "open failed";
	case THUNDERSCOPEHW_STATUS_READ_ERROR:
		return "read error";
	case THUNDERSCOPEHW_STATUS_WRITE_ERROR:
		return "write error";
	case THUNDERSCOPEHW_STATUS_ALREADY_STARTED:
		return "already started";
	case THUNDERSCOPEHW_STATUS_NOT_STARTED:
		return "not started";
	case THUNDERSCOPEHW_STATUS_ALREADY_STOPPED:
		return "already stopped";
	case THUNDERSCOPEHW_STATUS_OFFSET_TOO_LOW:
		return "voffset too low";
	case THUNDERSCOPEHW_STATUS_OFFSET_TOO_HIGH:
		return "voffset too high";
	}
	return "unkonwn error";
}
