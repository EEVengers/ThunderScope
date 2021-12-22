/*
 * This file is part of the Xilinx DMA IP Core driver for Linux
 *
 * Copyright (c) 2016-present,  Xilinx, Inc.
 * All rights reserved.
 *
 * This source code is free software; you can redistribute it and/or modify it
 * under the terms and conditions of the GNU General Public License,
 * version 2, as published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
 * more details.
 *
 * The full GNU General Public License is included in this distribution in
 * the file called "COPYING".
 */

#ifndef __XVC_IOCTL_H__
#define __XVC_IOCTL_H__

#include <linux/ioctl.h>

/*
 * the bar offset can be changed at compile time
 */
#define XVC_BAR_OFFSET_DFLT	0x40000	/* DSA 4.0 */

#define XVC_MAGIC 0x58564344  // "XVCD"

struct xvc_ioc {
	unsigned int opcode;
	unsigned int length;
	const char __user *tms_buf;
	const char __user *tdi_buf;
	void __user *tdo_buf;
};

#define XDMA_IOCXVC	_IOWR(XVC_MAGIC, 1, struct xvc_ioc)

#endif /* __XVC_IOCTL_H__ */
