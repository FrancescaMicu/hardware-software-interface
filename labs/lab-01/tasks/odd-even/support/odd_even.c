// SPDX-License-Identifier: BSD-3-Clause

#include <stdio.h>
#include <stdlib.h>

#include "odd_even.h"

void print_binary(int number, int nr_bits)
{
	/* TODO */
	(void) number;
	(void) nr_bits;
	int *p = malloc(nr_bits * sizeof(int));
	if ( !p ) {
		// return -1;
	}
	for ( int i = 0; i < nr_bits; i++ ) {
		*(p + i) = number % 2;
		number = number / 2;
	}
	printf("0b");
	for ( int i = 0; i < nr_bits; i++ )
		printf("%d", *(p + nr_bits - i - 1));
	printf("\n");
	free(p);
}

void check_parity(int *numbers, int n)
{
	/* TODO */
	(void) numbers;
	(void) n;
	for ( int i = 0; i < n; i++ ) {
		if( *(numbers + i) % 2 == 0 ) {
			print_binary(*(numbers + i), 8);
		} else {
			printf("0x%08X\n", *(numbers + i));
		}
	}
}
