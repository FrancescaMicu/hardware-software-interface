// SPDX-License-Identifier: BSD-3-Clause

#include <stdio.h>

#include "vector_max.h"

int vector_max(int *v, int len)
{
	int max = v[0];
	unsigned int i = 0;

	/**
	 * TODO: Implement finding the maximum value in the vector
	 */

	verif_cond:
		if ( v[i] <= max ) {
			goto for_b;
		}
		max = v[i];

	for_b:
		i++;
		if ( i < len ) {
			goto verif_cond;
		}
		return max;

	// return -1;
}
