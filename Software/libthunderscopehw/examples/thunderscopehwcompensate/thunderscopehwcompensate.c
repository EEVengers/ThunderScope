#include "thunderscopehw.h"

#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>
#include <string.h>

#ifdef WIN32
#include <windows.h>
#else
#include <unistd.h>
#endif

struct Option {
        const char* name;
        bool needs_argument;
        int return_value;
};

struct Option options[] = {
	{"device",             true,  1 },
	{"channel",            true,  2 },
	{"help",               false, 4 },
};

#define TS_RUN(X) do {							\
	enum ThunderScopeHWStatus ret = thunderscopehw_##X;		\
        if (ret != THUNDERSCOPEHW_STATUS_OK) {				\
		fprintf(stderr, "thunderscopehw_%s failed @ line %d, error = %s\n", #X, __LINE__, thunderscopehw_describe_error(ret)); \
		exit(1);						\
	}								\
} while(0)

void usage() {
	printf("thunderscopehwcalibrate [options]\n"
               "   --device=<deviceid>\n"
	       "   --channel=<channel\n");
}

char* optarg;
int optind = 1;
int mygetopt(int argc, char** argv) {
        if (optind >= argc) return -1;
	if (!argv[optind][0] == '-' || argv[optind][1] != '-') return -1;
	char *arg = strchr(argv[optind], '=');
	for (size_t i = 0; i < sizeof(options) / sizeof(options[0]); i++) {
               size_t len = strlen(options[i].name);
	       if (strncmp(options[i].name, argv[optind] + 2, len)) continue;
	       if (options[i].needs_argument) {
	               if (!arg) continue;
	               if (argv[optind] + 2 + len != arg) continue;
		       optarg = arg + 1;
	       } else {
	               if (arg) continue;
		       if (argv[optind][2 + len]) continue;
		       optarg = NULL;
	       }
	       optind++;
	       return options[i].return_value;
	}
	fprintf(stderr, "Unknown option: %s\n", argv[optind]);
	usage();
	exit(1);
}

int main(int argc, char** argv) {
	uint64_t scope_id = 0;
	uint64_t samples = 0;
	int channel = 0;
	while (1) {
		switch (mygetopt(argc, argv)) {
		case 1:
			if (!sscanf(optarg, "%" PRIx64, &scope_id)) {
			         fprintf(stderr, "Scope ID must be hexadecimal.\n");
			         exit(1);
			}
			continue;
		case 2:
			if (!sscanf(optarg, "%d", &channel)) {
			         fprintf(stderr, "--channel needs a number.\n");
			         exit(1);
			}
			continue;
		case 4:
			usage();
			exit(0);
		default:
			continue;
		case -1:
			break;
		}
		break;
	}

	if (scope_id == 0) {
		uint64_t scope_ids[32];
		int scopes = thunderscopehw_scan(scope_ids, 32);
		if (scopes == 0) {
			fprintf(stderr, "No thunderscopehw hardware found.\n");
			exit(1);
		}
		if (scopes > 1) {
			fprintf(stderr, "Multiple scopes found, please select one with --device.\n");
			for (int i = 0; i < scopes; i++) {
				fprintf(stderr, "  %0" PRIx64 "\n", scope_ids[i]);
			}
			exit(1);
		}
		scope_id = scope_ids[0];
	}

	if (channel < 1 || channel > 4) {
		fprintf(stderr, "Must specify a channel between 1 and 4\n");
		usage();
		exit(1);
	}
	channel--;

#define BUFFER_SIZE (1<<22)
	uint8_t* buffer;
#ifdef _WIN32
        buffer = _aligned_malloc(BUFFER_SIZE, 4096);
#else
	posix_memalign((void**)&buffer, 4096, BUFFER_SIZE);
#endif

	struct ThunderScopeHW *ts = thunderscopehw_create();
	enum ThunderScopeHWStatus ret;
	TS_RUN(connect(ts, scope_id));

	TS_RUN(enable_channel(ts, channel));
	// 100mV / div
	TS_RUN(voltage_division_set(ts, channel, 100));
retry:
#ifdef WIN32
	Sleep(500);
#else
	usleep(500000);
#endif
	TS_RUN(start(ts));
	while (true)
	{
		enum ThunderScopeHWStatus status = thunderscopehw_read(ts, buffer, BUFFER_SIZE);
		if (status != THUNDERSCOPEHW_STATUS_OK) {
			fprintf(stderr, "thunderscopehw_read failed, error = %s\n", thunderscopehw_describe_error(status));
			TS_RUN(stop(ts));
			goto retry;
		}
		if (thunderscopehw_available(ts) > BUFFER_SIZE * 10) continue;
		fprintf(stderr, "GOT\n");
		// Convert signed output to unsigned output
		for (size_t i = 0; i < BUFFER_SIZE; i++) {
			buffer[i] += 0x80;
		}

		int count = 0;
		int i;
		for (i = 0; i < BUFFER_SIZE; i += 100) {
			if (buffer[i] > 196) {
				count++;
				if (count > 50) break;
			} else {
				count = 0;
			}
		}
		if (count < 50) continue;
		while (i < BUFFER_SIZE && buffer[i] > 196) i += 100;
		i -= 100;
		while (i < BUFFER_SIZE && buffer[i] > 196) i++;
		i-=10;
		if (i >= BUFFER_SIZE) continue;
		char screen[64][256];
		memset(screen, ' ', sizeof(screen));
		int div = 1;
		for (int t = 0; t/div < 256; t++) {
			screen[buffer[i+t]/4][t/div] = '*';
		}
		for (int row = 0; row < 64; row++) {
			screen[row][255] = '\n';
		}
		screen[63][255] = 0;
		printf("\033[H%s\n", screen[0]);
		fflush(stdout);
	}
}
