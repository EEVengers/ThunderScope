#include "thunderscopehw.h"

#include <unistd.h>
#include <getopt.h>
#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>

int main(int argc, char** argv) {
	uint64_t ids[1];
	thunderscopehw_scan(ids, 1);
	struct ThunderScopeHW *ts = thunderscopehw_create();
	thunderscopehw_connect(ts, ids[0]);
	thunderscopehw_enable_channel(ts, 0);
	thunderscopehw_start(ts);
	uint8_t* buffer;
	posix_memalign((void**)&buffer, 4096, 1 << 20);
	thunderscopehw_read(ts, buffer, 1 << 20);
}
