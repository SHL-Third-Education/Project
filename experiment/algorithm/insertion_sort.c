#include <stdio.h>

int main(void)
{
	int card[6] = {5, 2, 4, 6, 1, 3};
	int i, j, key, len = 6;

	for(i = 1; i < len; i++)
	{
		key = card[i];

		for(j = i - 1; card[j] > key; j--)
			card[j + 1] = card[j];

		card[j + 1] = key;
	}

	printf("card: ");

	for(i = 0; i < 6; i++)
		printf("%3d", card[i]);

	printf("\n");

	return 0;
}
