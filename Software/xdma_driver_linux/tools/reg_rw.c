/*
 * This file is part of the Xilinx DMA IP Core driver tools for Linux
 *
 * Copyright (c) 2016-present,  Xilinx, Inc.
 * All rights reserved.
 *
 * This source code is licensed under BSD-style license (found in the
 * LICENSE file in the root directory of this source tree)
 */

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <byteswap.h>
#include <string.h>
#include <errno.h>
#include <signal.h>
#include <fcntl.h>
#include <ctype.h>
#include <termios.h>

#include <sys/types.h>
#include <sys/mman.h>

/* ltoh: little to host */
/* htol: little to host */
#if __BYTE_ORDER == __LITTLE_ENDIAN
#define ltohl(x)       (x)
#define ltohs(x)       (x)
#define htoll(x)       (x)
#define htols(x)       (x)
#elif __BYTE_ORDER == __BIG_ENDIAN
#define ltohl(x)     __bswap_32(x)
#define ltohs(x)     __bswap_16(x)
#define htoll(x)     __bswap_32(x)
#define htols(x)     __bswap_16(x)
#endif

#define FATAL do { fprintf(stderr, "Error at line %d, file %s (%d) [%s]\n", __LINE__, __FILE__, errno, strerror(errno)); exit(1); } while(0)

int main(int argc, char **argv)
{
	int fd;
	void *map;
	uint32_t read_result, writeval;
	off_t target;
	/* access width */
	char access_width = 'w';
	char *device;

	/* not enough arguments given? */
	if (argc < 3) {
		fprintf(stderr,
			"\nUsage:\t%s <device> <address> [[type] data]\n"
			"\tdevice  : character device to access\n"
			"\taddress : memory address to access\n"
			"\ttype    : access operation type : [b]yte, [h]alfword, [w]ord\n"
			"\tdata    : data to be written for a write\n\n",
			argv[0]);
		exit(1);
	}

	device = strdup(argv[1]);
	target = strtoul(argv[2], 0, 0);
	printf("device: %s, address: 0x%08x, access %s: %s.\n",
		device, (unsigned int)target, argc >= 4 ? "write" : "read");

	/* data given? */
	if (argc >= 4)
		access_width = tolower(argv[3][0]);
	printf("access width: ");
	if (access_width == 'b')
		printf("byte (8-bits)\n");
	else if (access_width == 'h')
		printf("half word (16-bits)\n");
	else if (access_width == 'w')
		printf("word (32-bits)\n");
	else {
		printf("default to word (32-bits)\n");
		access_width = 'w';
	}

	if ((fd = open(argv[1], O_RDWR | O_SYNC)) == -1)
		FATAL;
	printf("character device %s opened.\n", argv[1]);
	fflush(stdout);

	map = mmap(0, 4, PROT_READ | PROT_WRITE, MAP_SHARED, fd, target);
	if (map == (void *)-1)
		FATAL;
	printf("Memory 0x%lx mapped at address %p.\n", target, map);
	fflush(stdout);

	/* read only */
	if (argc <= 4) {
		switch (access_width) {
		case 'b':
			read_result = *((uint8_t *) map);
			printf
			    ("Read 8-bits value at address 0x%08x (%p): 0x%02x\n",
			     (unsigned int)target, map,
			     (unsigned int)read_result);
			break;
		case 'h':
			read_result = *((uint16_t *) map);
			/* swap 16-bit endianess if host is not little-endian */
			read_result = ltohs(read_result);
			printf
			    ("Read 16-bit value at address 0x%08x (%p): 0x%04x\n",
			     (unsigned int)target, map,
			     (unsigned int)read_result);
			break;
		case 'w':
			read_result = *((uint32_t *) map);
			/* swap 32-bit endianess if host is not little-endian */
			read_result = ltohl(read_result);
			printf
			    ("Read 32-bit value at address 0x%08x (%p): 0x%08x\n",
			     (unsigned int)target, map,
			     (unsigned int)read_result);
			return (int)read_result;
			break;
		default:
			fprintf(stderr, "Illegal data type '%c'.\n",
				access_width);
			exit(2);
		}
		fflush(stdout);
	}
	/* data value given, i.e. writing? */
	if (argc >= 5) {
		writeval = strtoul(argv[4], 0, 0);
		switch (access_width) {
		case 'b':
			printf("Write 8-bits value 0x%02x to 0x%08x (0x%p)\n",
			       (unsigned int)writeval, (unsigned int)target,
			       map);
			*((uint8_t *) map) = writeval;
#if 0
			if (argc > 4) {
				read_result = *((uint8_t *) map);
				printf("Written 0x%02x; readback 0x%02x\n",
				       writeval, read_result);
			}
#endif
			break;
		case 'h':
			printf("Write 16-bits value 0x%04x to 0x%08x (0x%p)\n",
			       (unsigned int)writeval, (unsigned int)target,
			       map);
			/* swap 16-bit endianess if host is not little-endian */
			writeval = htols(writeval);
			*((uint16_t *) map) = writeval;
#if 0
			if (argc > 4) {
				read_result = *((uint16_t *) map);
				printf("Written 0x%04x; readback 0x%04x\n",
				       writeval, read_result);
			}
#endif
			break;
		case 'w':
			printf("Write 32-bits value 0x%08x to 0x%08x (0x%p)\n",
			       (unsigned int)writeval, (unsigned int)target,
			       map);
			/* swap 32-bit endianess if host is not little-endian */
			writeval = htoll(writeval);
			*((uint32_t *) map) = writeval;
#if 0
			if (argc > 4) {
				read_result = *((uint32_t *) map);
				printf("Written 0x%08x; readback 0x%08x\n",
				       writeval, read_result);
			}
#endif
			break;
		}
		fflush(stdout);
	}
	if (munmap(map, 4) == -1)
		FATAL;
	close(fd);
	return 0;
}
