#include <time.h>
#include <stdio.h>
#include <stdlib.h>

void init_data(int *data)
{
	*data = rand() % 100 + 1;
}

int binary_search(int find_data, int low, int high)
{
	int mid = (low + high) >> 1;

redo:
	if(find_data > mid)
	{
		low = mid;
		mid = (mid + high) >> 1;
		goto redo;
	}
	else if(find_data < mid)
	{
		high = mid;
		mid = (mid + low) >> 1;
		goto redo;
	}

	return mid;
}

int main(void)
{
	int res, find_data;

	srand(time(NULL));

	init_data(&find_data);
	res = binary_search(find_data, 1, 100);
	printf("find_data = %d, res = %d\n", find_data, res);

	return 0;
}
