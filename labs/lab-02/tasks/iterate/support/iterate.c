// SPDX-License-Identifier: BSD-3-Clause

#include <stdio.h>

#include "iterate.h"
#include "array.h"

void print_chars(void)
{
	/**
	 * TODO: Implement function
	 */
	(void) v;
	unsigned char *ptr_c = (unsigned char *)&v;
	for ( int i = 0; i < sizeof(v)/ sizeof((*ptr_c)); i++ ) {
		printf("%p -> 0x%x\n", ptr_c, *ptr_c);
		ptr_c++;
	}

	printf("-------------------------------\n");
}

void print_shorts(void)
{
	/**
	 * TODO: Implement function
	 */
	(void) v;
	unsigned short *ptr_s = (unsigned short *) &v;
	for ( int i = 0; i < sizeof(v)/ sizeof((*ptr_s)); i++ ) {
		printf("%p -> 0x%x\n", ptr_s, *ptr_s);
		ptr_s++;
	}
	printf("-------------------------------\n");
}

void print_ints(void)
{
	/**
	 * TODO: Implement function
	 */
	(void) v;
	int *ptr_i = (int *) &v;
	for ( int i = 0; i < sizeof(v)/ sizeof((*ptr_i)); i++ ) {
		printf("%p -> 0x%x\n", ptr_i, *ptr_i);
		ptr_i++;
	}
	printf("-------------------------------\n");
}
