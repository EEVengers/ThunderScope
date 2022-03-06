#include "thunderscopehw.h"

#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>
#include <string.h>
#include <time.h>

#ifdef WIN32
#include <windows.h>
#else
#define Sleep(X) usleep((X) * 1000);
#include <unistd.h>
#include <sys/time.h>
#endif


static uint64_t time_ns(void)
{
    struct timespec ts;
    if (timespec_get(&ts, TIME_UTC) != TIME_UTC)
    {
	    fprintf(stderr, "timespec_get failed!");
	    exit(1);
    }
    return 1000000000 * ts.tv_sec + ts.tv_nsec;
}

void busywait(uint64_t nanos) {
	uint64_t a = time_ns();
	while (time_ns() - a < nanos);
}

struct Option {
        const char* name;
        bool needs_argument;
        int return_value;
};

struct Option options[] = {
	{"device",             true,  1 },
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
	printf("thunderscopehwcompensate [options]\n"
               "   --device=<deviceid>\n");
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
	while (1) {
		switch (mygetopt(argc, argv)) {
		case 1:
			if (!sscanf(optarg, "%" PRIx64, &scope_id)) {
			         fprintf(stderr, "Scope ID must be hexadecimal.\n");
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

	TS_RUN(enable_channel(ts, 0));
	TS_RUN(voltage_division_set(ts, 0, 100));
	// 100mV / div
	Sleep(500);
	// Test pattern 1, there may be more in the future
	while (true)
	{
		TS_RUN(start(ts));
	        fprintf(stderr, ".");
                fflush(stderr);
		enum ThunderScopeHWStatus status = thunderscopehw_read(ts, buffer, BUFFER_SIZE);
		if (status != THUNDERSCOPEHW_STATUS_OK) {
			fprintf(stderr, "thunderscopehw_read failed, error = %s\n", thunderscopehw_describe_error(status));
			Sleep(100);
		}
		busywait(2983474);
		TS_RUN(stop(ts));
	}
}

