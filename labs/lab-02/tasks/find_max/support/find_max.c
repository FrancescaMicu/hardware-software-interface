// SPDX-License-Identifier: BSD-3-Clause

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "find_max.h"

void *find_max(void *arr, int n, size_t element_size,
				int (*compare)(const void *, const void *))
{
	void *max_elem = arr;

	(void) n;
	(void) element_size;
	(void) compare;

	/**
	 * TODO: Implement function
	 */
	for (int i = 0; i < n; i++) {
		void *elem_vect = (char*)arr + i * element_size; 
		if ( compare(elem_vect, max_elem) == 1 )
			max_elem = elem_vect;
	}
 
	return max_elem;
}

int compare(const void *a, const void *b)
{
	(void) a;
	(void) b;

	/**
	 * TODO: Implement function
	 */
	int *tip_a = *(int *)a;
	int *tip_b = *(int *)b;
	if ( (*a) > (*b) ) {
		return 1;
	}
	return 0;

	//return 0x69;
}
