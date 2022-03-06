#include "thunderscopehw_private.h"

#ifdef __linux__
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <dirent.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <errno.h>
#include <unistd.h>

int thunderscopehw_scan(uint64_t* scope_ids, int max_ids)
{
	struct dirent* entry;
	int num_scopes = 0;
	DIR* dir = opendir("/dev");
	if (!dir) return 0;
	while ((entry = readdir(dir))) {
		if (strncmp(entry->d_name, "xdma", 4)) continue;
		if (strcmp(entry->d_name + strlen(entry->d_name) - 4, "user")) continue;
		int n = atoi(entry->d_name + 4);
		// TODO: find scope serial number and return that.
		if (num_scopes < max_ids) scope_ids[num_scopes] = n;
		num_scopes++;
	}
	return num_scopes;
}

static int thunderscopehw_open_helper(int n, const char* postfix)
{
	char device_path[128];
	snprintf(device_path, sizeof(device_path), "/dev/xdma%d_%s", n, postfix);
	int fd = open(device_path, O_RDWR);
	if (fd < 0) {
		perror("open");
		fprintf(stderr, "failed to open: %s, errno=%d\n", device_path, errno);
	}
	return fd;
}

enum ThunderScopeHWStatus thunderscopehw_connect(struct ThunderScopeHW* ts, uint64_t scope_id)
{
	if (ts->connected) return THUNDERSCOPEHW_STATUS_ALREADY_CONNECTED;
	ts->user_handle = thunderscopehw_open_helper(scope_id, USER_DEVICE_PATH);
	if (ts->user_handle <= 0) return THUNDERSCOPEHW_STATUS_OPEN_FAILED;
	ts->c2h0_handle = thunderscopehw_open_helper(scope_id, C2H_0_DEVICE_PATH);
	if (ts->c2h0_handle <= 0) return THUNDERSCOPEHW_STATUS_OPEN_FAILED;
	ts->connected = true;
	return thunderscopehw_initboard(ts);
}

enum ThunderScopeHWStatus thunderscopehw_disconnect(struct ThunderScopeHW* ts)
{
	if (!ts->connected) return THUNDERSCOPEHW_STATUS_NOT_CONNECTED;
	close(ts->user_handle);
	close(ts->c2h0_handle);
	ts->connected = false;
	return THUNDERSCOPEHW_STATUS_OK;
}

enum ThunderScopeHWStatus thunderscopehw_read_handle(struct ThunderScopeHW* ts, THUNDERSCOPEHW_FILE_HANDLE h, uint8_t* data, uint64_t addr, int64_t bytes)
{
	(void)ts;
	ssize_t ret = pread(h, data, bytes, addr);
	if (ret != bytes) {
		perror("pread");
		return THUNDERSCOPEHW_STATUS_READ_ERROR;
	}
	return THUNDERSCOPEHW_STATUS_OK;
}

enum ThunderScopeHWStatus thunderscopehw_write_handle(struct ThunderScopeHW* ts, THUNDERSCOPEHW_FILE_HANDLE h, uint8_t* data, uint64_t addr, int64_t bytes)
{
	(void)ts;
	ssize_t ret = pwrite(h, data, bytes, addr);
	if (ret != bytes) {
		perror("pwrite");
		return THUNDERSCOPEHW_STATUS_WRITE_ERROR;
	}
	return THUNDERSCOPEHW_STATUS_OK;
}
#endif  /* __linux__ */
