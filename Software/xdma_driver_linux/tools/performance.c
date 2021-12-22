/*
 * This file is part of the Xilinx DMA IP Core driver tools for Linux
 *
 * Copyright (c) 2016-present,  Xilinx, Inc.
 * All rights reserved.
 *
 * This source code is licensed under BSD-style license (found in the
 * LICENSE file in the root directory of this source tree)
 */

#include <assert.h>
#include <errno.h>
#include <fcntl.h>
#include <getopt.h>
#include <limits.h>
#include <signal.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include <sys/ioctl.h>
#include <sys/stat.h>
#include <sys/types.h>

/* @TODO During kernel upstreaming, the IOCTL must move into the public user API of the kernel */
#include "../xdma/cdev_sgdma.h"

struct xdma_performance_ioctl perf;

static struct option const long_opts[] =
{
  {"device", required_argument, NULL, 'd'},
  {"count", required_argument, NULL, 'c'},
  {"size", required_argument, NULL, 's'},
  {"incremental", no_argument, NULL, 'i'},
  {"non-incremental", no_argument, NULL, 'n'},
  {"verbose", no_argument, NULL, 'v'},
  {"help", no_argument, NULL, 'h'},
  {0, 0, 0, 0}
};

static void usage(const char* name)
{
  int i = 0;
  printf("%s\n\n", name);
  printf("usage: %s [OPTIONS]\n\n", name);
  printf("Performance test for XDMA SGDMA engine.\n\n");

  printf("  -%c (--%s) device\n", long_opts[i].val, long_opts[i].name); i++;
  printf("  -%c (--%s) incremental\n", long_opts[i].val, long_opts[i].name); i++;
  printf("  -%c (--%s) non-incremental\n", long_opts[i].val, long_opts[i].name); i++;
  printf("  -%c (--%s) be more verbose during test\n", long_opts[i].val, long_opts[i].name); i++;
  printf("  -%c (--%s) print usage help and exit\n", long_opts[i].val, long_opts[i].name); i++;
}

static uint32_t getopt_integer(char *optarg)
{
  int rc;
  uint32_t value;
  rc = sscanf(optarg, "0x%x", &value);
  if (rc <= 0)
    rc = sscanf(optarg, "%ul", &value);
  //printf("sscanf() = %d, value = 0x%08x\n", rc, (unsigned int)value);
  return value;
}

int test_dma(char *device_name, int size, int count);

static int verbosity = 0;

int main(int argc, char *argv[])
{
  int cmd_opt;
  char *device = "/dev/xdma/card0/h2c0";
  uint32_t size = 32768;
  uint32_t count = 1;
  char *filename = NULL;

  while ((cmd_opt = getopt_long(argc, argv, "vhic:d:s:", long_opts, NULL)) != -1)
  {
    switch (cmd_opt)
    {
      case 0:
        /* long option */
        break;
      case 'v':
        verbosity++;
        break;
      /* device node name */
      case 'd':
        printf("'%s'\n", optarg);
        device = strdup(optarg);
        break;
      /* transfer size in bytes */
      case 's':
        size = getopt_integer(optarg);
        break;
      /* count */
      case 'c':
        count = getopt_integer(optarg);
	printf(" count = %d\n", count);
        break;
      /* print usage help and exit */
      case 'h':
      default:
        usage(argv[0]);
        exit(0);
        break;
    }
  }
  printf("device = %s, size = 0x%08x, count = %u\n", device, size, count);
  test_dma(device, size, count);

}

int test_dma(char *device_name, int size, int count)
{
  int rc = 0;
  int fd = open(device_name, O_RDWR);
  if (fd < 0) {
	  printf("FAILURE: Could not open %s. Make sure xdma device driver is loaded and you have access rights (maybe use sudo?).\n", device_name);
	  exit(1);
  }

  unsigned char status = 1;

  perf.version = IOCTL_XDMA_PERF_V1;
  perf.transfer_size = size;
  rc = ioctl(fd, IOCTL_XDMA_PERF_START, &perf);
  if (rc == 0) {
    printf("IOCTL_XDMA_PERF_START succesful.\n");
  } else {
    printf("ioctl(..., IOCTL_XDMA_PERF_START) = %d\n", rc);
  }
#if 1
  while (count--) {

    sleep(2);
    rc = ioctl(fd, IOCTL_XDMA_PERF_GET, &perf);
    if (rc == 0) {
      printf("IOCTL_XDMA_PERF_GET succesful.\n");
    } else {
      printf("ioctl(..., IOCTL_XDMA_PERF_GET) = %d\n", rc);
    }
    printf("perf.transfer_size = %d\n", perf.transfer_size);
    printf("perf.iterations = %d\n", perf.iterations);
    printf("(data transferred = %lld bytes)\n", (long long)perf.transfer_size * (long long)perf.iterations);
    printf("perf.clock_cycle_count = %lld\n", (long long)perf.clock_cycle_count);
    printf("perf.data_cycle_count = %lld\n", (long long)perf.data_cycle_count);
    if (perf.clock_cycle_count && perf.data_cycle_count) {
    printf("(data duty cycle = %lld%%)\n", (long long)perf.data_cycle_count * 100 / (long long)perf.clock_cycle_count);
    }
  }
#endif
  rc = ioctl(fd, IOCTL_XDMA_PERF_STOP, &perf);
  if (rc == 0) {
    printf("IOCTL_XDMA_PERF_STOP succesful.\n");
  } else {
    printf("ioctl(..., IOCTL_XDMA_PERF_STOP) = %d\n", rc);
  }
  printf("perf.transfer_size = %d bytes\n", perf.transfer_size);
  printf("perf.iterations = %d\n", perf.iterations);
  printf("(data transferred = %lld bytes)\n", (long long)perf.transfer_size * (long long)perf.iterations);
  printf("perf.clock_cycle_count = %lld\n", (long long)perf.clock_cycle_count);
  printf("perf.data_cycle_count = %lld\n", (long long)perf.data_cycle_count);
  if (perf.clock_cycle_count && perf.data_cycle_count) {
    printf("(data duty cycle = %lld%%)\n", (long long)perf.data_cycle_count * 100 / (long long)perf.clock_cycle_count);
    printf (" data rate ***** bytes length = %d, rate = %f \n", perf.transfer_size, (double)(long long)perf.data_cycle_count/(long long)perf.clock_cycle_count);
  }
  printf("perf.pending_count = %lld\n", (long long)perf.pending_count);

  close(fd);
}
