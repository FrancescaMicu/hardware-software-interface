// SPDX-License-Identifier: BSD-3-Clause

#include <stdio.h>

#include "binary_search.h"

int binary_search(int *v, int len, int dest)
{
	int start = 0;
	int end = len - 1;
	int middle;

	/**
	 * TODO: Implement binary search
	 */
	caut:
		if ( start > end ) {
			return -1;
		}
		middle = (start + end) / 2;
		if ( v[middle] > dest) {
			goto stanga;
		}
		if ( v[middle] == dest ) {
			return middle;
		}
		start = middle + 1;
		goto caut;

	stanga:
		end = middle - 1;
		goto caut;
	
	// return -1;
}
