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
	{"verbose",            false, 2 },
	{"repeat",             true,  3 },
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
	       "   --verbose\n"
	       "   --repeat=<repetitions>\n");
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
	int verbose = 0;
	int repeat = 1;
	uint64_t scope_id = 0;
	uint64_t samples = 0;
	int samplerate = 0;
	while (1) {
		switch (mygetopt(argc, argv)) {
		case 1:
			if (!sscanf(optarg, "%" PRIx64, &scope_id)) {
			         fprintf(stderr, "Scope ID must be hexadecimal.\n");
			         exit(1);
			}
			continue;
		case 2:
			verbose++;
			continue;
		case 3:
			if (!sscanf(optarg, "%d", &repeat)) {
			         fprintf(stderr, "--repeat needs a number.\n");
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

#define BUFFER_SIZE (1<<20)
	uint8_t* buffer;
#ifdef _WIN32
        buffer = _aligned_malloc(BUFFER_SIZE, 4096);
#else
	posix_memalign((void**)&buffer, 4096, BUFFER_SIZE);
#endif

	struct ThunderScopeHW *ts = thunderscopehw_create();
	enum ThunderScopeHWStatus ret;
	TS_RUN(connect(ts, scope_id));

	for (int channel = 0; channel < 4; channel++) {
		TS_RUN(enable_channel(ts, channel));
		// 1mV / div
		TS_RUN(voltage_division_set(ts, channel, 1));
#ifdef WIN32
		Sleep(500);
#else
		usleep(500000);
#endif

		for (int i = 0; i < repeat; i++) {
			double minoffset = -0.5;
			double maxoffset = 0.5;
			for (int j = 0; j < 20; j++) {
				double midoffset = (minoffset + maxoffset) / 2;
				TS_RUN(voltage_offset_set(ts, channel, midoffset));
				TS_RUN(start(ts));
				enum ThunderScopeHWStatus status = thunderscopehw_read(ts, buffer, BUFFER_SIZE);
				if (status != THUNDERSCOPEHW_STATUS_OK) {
					fprintf(stderr, "thunderscopehw_read failed, error = %s\n", thunderscopehw_describe_error(status));
					j--;
					TS_RUN(stop(ts));
					continue;
				}
				// Convert signed output to unsigned output
				for (size_t i = 0; i < BUFFER_SIZE; i++) {
					buffer[i] += 0x80;
				}
				TS_RUN(stop(ts));
				int high = 0;
				int low = 0;
				uint64_t sum = 0;
				for (size_t i = 0; i < BUFFER_SIZE; i++) {
					if (buffer[i] > 0x80) high++;
					if (buffer[i] < 0x80) low++;
					sum += buffer[i];
				}
				if (verbose) {
					fprintf(stderr," min = %8.4f  max = %8.4f  mid = %8.4f  high=%d low=%d avg=%f\n",
						minoffset, maxoffset, midoffset,
						high, low,
						sum / (double)BUFFER_SIZE);
				}
				if (high > low) {
					minoffset = midoffset;
				} else {
					maxoffset = midoffset;
				}
			}
			printf("Channel %d calibration = %f\n", channel + 1, (minoffset + maxoffset) / 2);
		}
		TS_RUN(disable_channel(ts, channel));
	}
}
