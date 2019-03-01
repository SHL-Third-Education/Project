#include <stdio.h>
#include <math.h>

/* Main Idea
   {4, 0, 1}, {3, 3, 2}, {3, 0, 1}
    401        332        301
*/

void transform_format(int *res, int (*arr)[3])
{
	int i, j;

	for(i = 0; i < 3; i++)
		for(j = 0; j < 3; j++)
			res[i] += arr[i][j] * pow(10, 2 - j);
}

void print_arr(int *arr)
{
	int i;

	printf("arr = \n");

	for(i = 0; i < 3; i++)
		printf("%4d", arr[i]);

	printf("\n");
}

void print_orig_form(int (*arr)[3])
{
	int i, j;

	printf("orig arr = \n");

	for(i = 0; i < 3; i++)
		printf("{%3d, %3d, %3d}\t", arr[i][0], arr[i][1], arr[i][2]);

	printf("\n");
}

void sort_ascend(int *arr)
{
	int i, j, key, len = 3;

	for(i = 1; i < len; i++)
	{
		key = arr[i];

		for(j = i - 1; arr[j] > key; j--)
			arr[j + 1] = arr[j];

		arr[j + 1] = key;
	}
}

void sort_descend(int *arr)
{
	int i, j, key, len = 3;

	for(i = len - 1; i > 0; i--)
	{
		key = arr[i - 1];

		for(j = i; arr[j] > key; j++)
			arr[j - 1] = arr[j];

		arr[j - 1] = key;
	}
}

void inverse_transform(int *arr, int (*res)[3])
{
	int i, j;

	for(i = 0; i < 3; i++)
		for(j = 0; j < 3; j++)
			res[i][j] = (int)(arr[i] / pow(10, 2 - j)) % 10;
}

int main(void)
{
	int res[4] = {0};
	int real[3][3] = {0};
	int arr[3][3] = {{4, 0, 1}, {3, 3, 2}, {3, 0, 1}};

	print_orig_form(arr);
	transform_format(res, arr);
	print_arr(res);

	//sort_ascend(res);
	sort_descend(res);
	print_arr(res);

	inverse_transform(res, real);
	print_orig_form(real);

	return 0;
}
