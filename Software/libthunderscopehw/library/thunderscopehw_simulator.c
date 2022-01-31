#include "thunderscopehw_private.h"

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <errno.h>

int thunderscopehw_scan(uint64_t* scope_ids, int max_ids)
{
	if (max_ids > 0)
		*scope_ids = 0;
	return 1;
}

enum ThunderScopeHWStatus thunderscopehw_connect(struct ThunderScopeHW* ts, uint64_t scope_id)
{
	if (ts->connected) return THUNDERSCOPEHW_STATUS_ALREADY_CONNECTED;
	ts->user_handle = (THUNDERSCOPEHW_FILE_HANDLE)101;
	ts->c2h0_handle = (THUNDERSCOPEHW_FILE_HANDLE)102;
	ts->connected = true;
	return thunderscopehw_initboard(ts);
}

enum ThunderScopeHWStatus thunderscopehw_disconnect(struct ThunderScopeHW* ts)
{
	if (!ts->connected) return THUNDERSCOPEHW_STATUS_NOT_CONNECTED;
	ts->user_handle = THUNDERSCOPEHW_INVALID_HANDLE_VALUE;
	ts->c2h0_handle = THUNDERSCOPEHW_INVALID_HANDLE_VALUE;
	ts->connected = false;
	return THUNDERSCOPEHW_STATUS_OK;
}

uint8_t thunderscopehw_simulator_fifo[256];
uint8_t thunderscopehw_simulator_fifo_length = 0;

static char* thunderscopehw_identify_handle(THUNDERSCOPEHW_FILE_HANDLE h) {
  if (h == (THUNDERSCOPEHW_FILE_HANDLE)101) return "USER";
  if (h == (THUNDERSCOPEHW_FILE_HANDLE)102) return "DMA";
  return "UNKNOWN";
}

static uint16_t blocks = 0;
enum ThunderScopeHWStatus thunderscopehw_read_handle(struct ThunderScopeHW* ts, THUNDERSCOPEHW_FILE_HANDLE h, uint8_t* data, uint64_t addr, int64_t bytes)
{
	(void)ts;
	printf("READ  %lld from %s at 0x%06llx :",
		(long long)bytes,
	        thunderscopehw_identify_handle(h),
		(long long)addr);
	memset(data, 0, bytes);
	switch (addr) {
	case 8:
		blocks++;
		data[3] = blocks & 255;
		data[2] = blocks >> 8;
		break;

	case SERIAL_FIFO_ISR_ADDRESS:
		if (thunderscopehw_simulator_fifo_length) {
			data[3] = 0;
			thunderscopehw_simulator_fifo_length--;
		} else {
			data[3] = 8;
		}
		break;
	}
	if (bytes <= 4) {
		for (int i = 0; i < bytes; i++) {
			printf(" 0x%02x", data[i]);
		}
	}
	printf("\n");
	return THUNDERSCOPEHW_STATUS_OK;
}


enum ThunderScopeHWStatus thunderscopehw_write_handle(struct ThunderScopeHW* ts, THUNDERSCOPEHW_FILE_HANDLE h, uint8_t* data, uint64_t addr, int64_t bytes)
{
	(void)ts;
	printf("WRITE %lld to   %s at 0x%06llx :",
		(long long)bytes,
	        thunderscopehw_identify_handle(h),
		(long long)addr);
	if (bytes <= 4) {
		for (int i = 0; i < bytes; i++) {
			printf(" 0x%02x", data[i]);
		}
	}
	printf("\n");
	uint32_t tmp = 0;
	if (bytes == 4) {
		tmp = (data[3] << 24) | (data[2] << 16) | (data[1] << 8) | data[0];
	}
	switch (addr) {
	case 0x20010: // FIFO write
		if (bytes == 1) {
			thunderscopehw_simulator_fifo[thunderscopehw_simulator_fifo_length++] = *data;
			return THUNDERSCOPEHW_STATUS_OK;
		}
	case SERIAL_FIFO_TLR_ADDRESS:
		if (bytes == 4) {
#if 0
			printf("FIFO SEND:");
			for (int i = 0; i < thunderscopehw_simulator_fifo_length; i++) {
				printf(" 0x%02x", thunderscopehw_simulator_fifo[i]);
			}
			printf("\n");
#endif
			if (thunderscopehw_simulator_fifo_length != tmp / 4) {
				printf("Wrong fifo length: %u / 4 != %d\n",
					tmp,
					thunderscopehw_simulator_fifo_length);
				exit(1);
			}
			return THUNDERSCOPEHW_STATUS_OK;
		}
	}
	return THUNDERSCOPEHW_STATUS_OK;
}

