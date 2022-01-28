#include "thunderscopehw.h"

#include <unistd.h>
#include <getopt.h>
#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>

void write32(uint64_t x, FILE* f) {
	uint32_t v = 0;
	if (x < 0xFFFFFFFF) v = x;
	if (fwrite(&v, 1, 4, f) != 4) {
		perror("fwrite");
		exit(1);
	}
}

int main(int argc, char** argv) {
	static struct option long_options[] = {
		{"device",      required_argument, 0,  1 },
		{"samples",     required_argument, 0,  2 },

		{"bw-all",      required_argument, 0,  0x10 },
		{"bw1",         required_argument, 0,  0x11 },
		{"bw2",         required_argument, 0,  0x12 },
		{"bw3",         required_argument, 0,  0x13 },
		{"bw4",         required_argument, 0,  0x14 },

		{"vdiv-all",    required_argument, 0,  0x20 },
		{"vdiv1",       required_argument, 0,  0x21 },
		{"vdiv2",       required_argument, 0,  0x22 },
		{"vdiv3",       required_argument, 0,  0x23 },
		{"vdiv4",       required_argument, 0,  0x24 },

		{"voffset-all", required_argument, 0,  0x30 },
		{"voffset1",    required_argument, 0,  0x31 },
		{"voffset2",    required_argument, 0,  0x32 },
		{"voffset3",    required_argument, 0,  0x33 },
		{"voffset4",    required_argument, 0,  0x34 },

		{"ac-all",      no_argument, 0,  0x40 },
		{"ac1",         no_argument, 0,  0x41 },
		{"ac2",         no_argument, 0,  0x42 },
		{"ac3",         no_argument, 0,  0x43 },
		{"ac4",         no_argument, 0,  0x44 },

		{"dc-all",      no_argument, 0,  0x50 },
		{"ac1",         no_argument, 0,  0x51 },
		{"ac2",         no_argument, 0,  0x52 },
		{"ac3",         no_argument, 0,  0x53 },
		{"ac4",         no_argument, 0,  0x54 },

		{"enable-all",  no_argument, 0,  0x60 },
		{"enable1",     no_argument, 0,  0x61 },
		{"enable2",     no_argument, 0,  0x62 },
		{"enable3",     no_argument, 0,  0x63 },
		{"enable4",     no_argument, 0,  0x64 },

		{0,         0,                 0,  0 }
	};

	uint64_t scope_id = 0;
	uint64_t samples = 0;
	while (1) {
		switch (getopt_long(argc, argv, "", long_options, NULL)) {
		case 1:
			sscanf(optarg, "%" PRIx64, &scope_id);
			continue;
		case 2:
			sscanf(optarg, "%" PRId64, &samples);
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

	struct ThunderScopeHW *ts = thunderscopehw_create();
	enum ThunderScopeHWStatus ret;
	ret = thunderscopehw_connect(ts, scope_id);
        if (ret != THUNDERSCOPEHW_STATUS_OK) {
		fprintf(stderr, "Failed to connecto to thunderscope, error = %s\n", thunderscopehw_describe_error(ret));
		exit(1);
	}

	int enabled_channels = 0;
	int num_channels = 0;
	optind = 1;

	while (1) {
		int c = getopt_long(argc, argv, "", long_options, NULL);
		if (c == -1) break;
		if (!(c >> 4)) continue;
		for (int channel = 0; channel < 4; channel++) {
			if ((c & 0xf) != channel+1 && (c & 0xf) != 0) continue;
			switch (c >> 4) {
			case 1: // bw
				ret = thunderscopehw_bandwidth_set(ts, channel, atoi(optarg));
				if (ret != THUNDERSCOPEHW_STATUS_OK) {
					fprintf(stderr, "Failed to set bandwidth. error =%s\n", thunderscopehw_describe_error(ret));
					exit(1);
				}
				break;
			case 2: // vdiv
				ret = thunderscopehw_voltage_division_set(ts, channel, atoi(optarg));
				if (ret != THUNDERSCOPEHW_STATUS_OK) {
					fprintf(stderr, "Failed to set vdiv. error =%s\n", thunderscopehw_describe_error(ret));
					exit(1);
				}
				break;
			case 3: // voffset
				ret = thunderscopehw_voltage_offset_set(ts, channel, atoi(optarg));
				if (ret != THUNDERSCOPEHW_STATUS_OK) {
					fprintf(stderr, "Failed to set voffset. error =%s\n", thunderscopehw_describe_error(ret));
					exit(1);
				}
				break;
			case 4: // ac
				ret = thunderscopehw_ac_couple(ts, channel);
				if (ret != THUNDERSCOPEHW_STATUS_OK) {
					fprintf(stderr, "Failed to set AC coupling. error =%s\n", thunderscopehw_describe_error(ret));
					exit(1);
				}
				break;
			case 5: // dc
				ret = thunderscopehw_dc_couple(ts, channel);
				if (ret != THUNDERSCOPEHW_STATUS_OK) {
					fprintf(stderr, "Failed to set DC coupling. error =%s\n", thunderscopehw_describe_error(ret));
					exit(1);
				}
				break;
			}
			if ((c >> 4) == 6 || (c & 0xf)) {
				ret = thunderscopehw_enable_channel(ts, channel);
				if (ret != THUNDERSCOPEHW_STATUS_OK) {
					fprintf(stderr, "Failed to enable channel. error =%s\n", thunderscopehw_describe_error(ret));
					exit(1);
				}
				if (!(enabled_channels & (1 << channel))) {
					num_channels++;
					enabled_channels |= 1 << channel;
				}
			}
		}
	}

	if (!num_channels) {
		fprintf(stderr, "No channels selected.\n");
		exit(1);
	}

	if (samples <= 0) {
		fprintf(stderr, "Must select number of samples.\n");
		exit(1);
	}

	if (samples & 4095) {
		fprintf(stderr, "Number of samples must be divisible by 4096\n");
		exit(1);
	}

	FILE* outfile = stdout;
	if (optind < argc) {
		outfile = fopen(argv[optind], "wb");
		if (!outfile) {
			perror("open output file");
			exit(1);
		}
	}

	struct Fmt {
		uint16_t pcm;
		uint16_t channels;
		uint32_t rate;
		uint32_t byterate;
		uint16_t block_align;
		uint16_t bits_per_sample;
	};

	struct Fmt fmt;
	fmt.pcm = 1;
	fmt.channels = num_channels;
	fmt.rate = 1000000000 / fmt.channels;
	fmt.byterate = 1000000000;
	fmt.block_align = 0;
	fmt.bits_per_sample = 8;

	fwrite("RIFF", 4, 1, outfile);
	write32(4ull +
		16 + 8 + /* fmt */
		samples * fmt.channels + 8 /* data */, outfile);
	fwrite("WAVEfmt ", 8, 1, outfile);
	write32(16, outfile);
	fwrite(&fmt, 16, 1, outfile);
	fwrite("data", 4, 1, outfile);
	write32(samples * fmt.channels, outfile);

	ret = thunderscopehw_start(ts);
	if (ret != THUNDERSCOPEHW_STATUS_OK) {
		fprintf(stderr, "Failed to start thunderscope, error=%d\n", ret);
		exit(1);
	}

	uint8_t* buffer;
	posix_memalign((void**)&buffer, 4096, 1 << 20);

	while (samples) {
		int64_t to_copy = samples;
		if (to_copy > sizeof(buffer)) to_copy = sizeof(buffer);
		ret = thunderscopehw_read(ts, buffer, sizeof(buffer));
		if (ret != THUNDERSCOPEHW_STATUS_OK) {
			fprintf(stderr, "Thunderscope read error, error = %s\n", thunderscopehw_describe_error(ret));
			exit(1);
		}
		if (fwrite(buffer, 1, sizeof(buffer), outfile) != sizeof(buffer)) {
			perror("fwrite");
			exit(1);
		}
		samples -= to_copy;
	}
}
