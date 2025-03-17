// SPDX-License-Identifier: BSD-3-Clause

#include <stdio.h>

#include "rotate.h"

void rotate_left(unsigned int *number, int bits)
{
	/* TODO */
	(void) number;
	(void) bits;
	int mask = (*number) >> (sizeof(*number) * 8 - bits);
	(*number) = (*number << bits) | mask;
}

void rotate_right(unsigned int *number, int bits)
{
	/* TODO */
	(void) number;
	(void) bits;
	int mask = (*number) >> (sizeof(*number) * 8 - bits);
	(*number) = (*number << bits) | mask;
}
