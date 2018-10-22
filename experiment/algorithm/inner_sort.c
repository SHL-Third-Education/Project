#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int **extract_pattern(int (*card)[3])
{
	int i, j, k;

	//pat = (pattern *)malloc(sizeof(pattern) * 3);

	int **arr = (int **)malloc(sizeof(int *) * 3);

	for(i = 0; i < 3; i++)
	{
		arr[i] = (int *)malloc(sizeof(int) * 2);

		for(j = 0; j < 2; j++)
		{
			arr[i][j] = card[j][i];
			printf("%3d", arr[i][j]);
		}

		printf("\n");
	}		

	return arr;
}

int ***make_new_pattern(int **arr)
{
	int i, j, k;

	int ***tmp = (int ***)malloc(sizeof(int ***) * 3);

	printf("new pattern = \n");

	for(i = 0; i < 3; i++)
	{
		tmp[i] = (int **)malloc(sizeof(int **) * 2);

		for(j = 0; j < 2; j++)
		{
			tmp[i][j] = (int *)malloc(sizeof(int *) * 2);

			for(k = 0; k < 1; k++)
			{
				tmp[i][j][k] = arr[i][j];
				tmp[i][j][k + 1] = j;
			}

			printf("{%3d, %3d}\t", tmp[i][j][0], tmp[i][j][1]);
		}

		printf("\n");
	}

	return tmp;
}

void sort_ascend(int *card)
{
	int i, j, key, len = 2;

	for(i = 1; i < len; i++)
	{
		key = card[i];

		for(j = i - 1; card[j] > key; j--)
			card[j + 1] = card[j];

		card[j + 1] = key;
	}	
}

#if 0
void sort_pattern(int (*arr)[3], pattern pat)
{
	int i, j, k;

	for(i = 0; i < 3; i++)
	{
		
	}
}
#endif

void print_arr(int ***arr)
{
	int i, j, k;

	for(i = 0; i < 3; i++)
	{
		for(j = 0; j < 2; j++)
			printf("{%3d, %3d}\t", arr[i][j][0], arr[i][j][1]);

		printf("\n");
	}
}

int sort_arr(int **arr)
{
	int i, j, key1, key2, len = 2;

	for(i = 1; i < len; i++)
	{
		key1 = arr[i][0];
		key2 = arr[i][1];

		for(j = i - 1; j != -1 && arr[j][0] > key1; j--)
		{
			arr[j + 1][0] = arr[j][0];
			arr[j + 1][1] = arr[j][1];
		}

		arr[j + 1][0] = key1;
		arr[j + 1][1] = key2;
	}

	return arr[0][1];
}

void sort_pattern(int ***tmp)
{
	int i, j, k;
	int storage[4] = {0};

	printf("idx storage = \n");

	for(i = 0; i < 3; i++)
	{
		storage[i] = sort_arr(tmp[i]);
		printf("%3d", storage[i]);
	}

	printf("\n");
}

int main(void)
{
	int card[2][3] = {{1, 1, 0}, {1, 0, 1}};
	int len = sizeof(card) / (sizeof(int) * 3);
	int sublen = 3;
	int key[3] = {0};
	int subkey;

	int **res;
	int **arr;
	int ***tmp;

	int i, j, k;

	printf("len = %d\n", len);
	printf("sublen = %d\n", sublen);

	arr = extract_pattern(card);
	tmp = make_new_pattern(arr);
	sort_pattern(tmp);
	printf("After Sort = \n");
	print_arr(tmp);
	//sort_pattern(card, pat);

#if 0
	for(i = 1; i < len; i++)
	{
		memcpy(key, card[i], 12);
		printf("key[0], key[1], key[2] = %d, %d, %d\n", key[0], key[1], key[2]);
		//for(j = 1; j < sublen;
	}
#endif

	return 0;
}
