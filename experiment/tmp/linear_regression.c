#include <stdio.h>
#include <math.h>

typedef struct _lra
{
	float coeff1;
	float coeff2;
	float (*data)[2];

	int len;
	int sublen;
	float err;
} lra;

void calc_coeff(lra *lr)
{
	int i;

	float sumXi = 0, sumYi = 0;
	float sumXiYi = 0;
	float sumXiSquare = 0;
	float (*data)[2] = lr->data;

	if(lr->len == 1)
		return;

	for(i = 0; i < lr->len; i++)
	{
		sumXi += data[i][0];
		sumYi += data[i][1];
		sumXiYi += data[i][0] * data[i][1];
		sumXiSquare += data[i][0] * data[i][0];
	}

	lr->coeff1 = (sumXiSquare * sumYi - sumXiYi * sumXi) / ((float)lr->len * sumXiSquare - pow(sumXi, 2.0));
	lr->coeff2 = ((float)lr->len * sumXiYi - sumXi * sumYi) / ((float)lr->len * sumXiSquare - pow(sumXi, 2.0));
}

int main(void)
{
	int i, j;
	float dset[16][2] = {
				{3.0, 46.0}, {3.0, 50.1}, {3.0, 49.0},
				{2.5, 38.6}, {2.5, 39.1}, {2.5, 38.6},
				{2.0, 28.1}, {2.0, 27.1}, {2.0, 26.3}, {2.0, 25.5}, {2.0, 26.5},
				{1.4, 11.5}, {1.4, 12.2},
				{1.0, 5.8}, {1.0, 6.2}, {1.0, 6.5}
			};
	lra lr = {0, 0, dset, sizeof(dset) / sizeof(dset[0]), sizeof(dset[0]) / sizeof(float)};
	calc_coeff(&lr);
	printf("y = %f x + %f\n", lr.coeff2, lr.coeff1);

	return 0;
}
