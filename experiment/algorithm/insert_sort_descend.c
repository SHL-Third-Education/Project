#include <stdio.h>

int main(void)
{
	int card[7] = {5, 2, 4, 6, 1, 3};
	int i, j, key, len = 6;

	for(i = len - 1; i > 0; i--)
	{
		key = card[i - 1];

		for(j = i; card[j] > key; j++)
			card[j - 1] = card[j];

		card[j - 1] = key;
	}

	printf("card: ");

	for(i = 0; i < 6; i++)
		printf("%3d", card[i]);

	printf("\n");

	return 0;
}
