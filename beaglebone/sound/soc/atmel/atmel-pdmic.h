/* SPDX-License-Identifier: GPL-2.0 */
#ifndef __ATMEL_PDMIC_H_
#define __ATMEL_PDMIC_H_

#include <linux/bitops.h>

#define PDMIC_CR	0x00000000

#define PDMIC_CR_SWRST		0x1
#define PDMIC_CR_SWRST_MASK	BIT(0)
#define PDMIC_CR_SWRST_SHIFT	(0)

#define PDMIC_CR_ENPDM_DIS	0x0
#define PDMIC_CR_ENPDM_EN	0x1
#define PDMIC_CR_ENPDM_MASK	BIT(4)
#define PDMIC_CR_ENPDM_SHIFT	(4)

#define PDMIC_MR	0x00000004

#define PDMIC_MR_CLKS_PCK	0x0
#define PDMIC_MR_CLKS_GCK	0x1
#define PDMIC_MR_CLKS_MASK	BIT(4)
#define PDMIC_MR_CLKS_SHIFT	(4)

#define PDMIC_MR_PRESCAL_MASK	GENMASK(14, 8)
#define PDMIC_MR_PRESCAL_SHIFT	(8)

#define PDMIC_CDR	0x00000014

#define PDMIC_IER	0x00000018
#define PDMIC_IER_OVRE			BIT(25)

#define PDMIC_IDR	0x0000001c
#define PDMIC_IDR_OVRE			BIT(25)

#define PDMIC_IMR	0x00000020

#define PDMIC_ISR	0x00000024
#define PDMIC_ISR_OVRE			BIT(25)

#define PDMIC_DSPR0	0x00000058

#define PDMIC_DSPR0_HPFBYP_DIS		0x1
#define PDMIC_DSPR0_HPFBYP_EN		0x0
#define PDMIC_DSPR0_HPFBYP_MASK		BIT(1)
#define PDMIC_DSPR0_HPFBYP_SHIFT	(1)

#define PDMIC_DSPR0_SINBYP_DIS		0x1
#define PDMIC_DSPR0_SINBYP_EN		0x0
#define PDMIC_DSPR0_SINBYP_MASK		BIT(2)
#define PDMIC_DSPR0_SINBYP_SHIFT	(2)

#define PDMIC_DSPR0_SIZE_16_BITS	0x0
#define PDMIC_DSPR0_SIZE_32_BITS	0x1
#define PDMIC_DSPR0_SIZE_MASK		BIT(3)
#define PDMIC_DSPR0_SIZE_SHIFT		(3)

#define PDMIC_DSPR0_OSR_128		0x0
#define PDMIC_DSPR0_OSR_64		0x1
#define PDMIC_DSPR0_OSR_MASK		GENMASK(6, 4)
#define PDMIC_DSPR0_OSR_SHIFT		(4)

#define PDMIC_DSPR0_SCALE_MASK		GENMASK(11, 8)
#define PDMIC_DSPR0_SCALE_SHIFT		(8)

#define PDMIC_DSPR0_SHIFT_MASK		GENMASK(15, 12)
#define PDMIC_DSPR0_SHIFT_SHIFT		(12)

#define PDMIC_DSPR1	0x0000005c

#define PDMIC_DSPR1_DGAIN_MASK		GENMASK(14, 0)
#define PDMIC_DSPR1_DGAIN_SHIFT		(0)

#define PDMIC_DSPR1_OFFSET_MASK		GENMASK(31, 16)
#define PDMIC_DSPR1_OFFSET_SHIFT	(16)

#define PDMIC_WPMR	0x000000e4

#define PDMIC_WPSR	0x000000e8

#endif