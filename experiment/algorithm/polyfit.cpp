#include<iostream>
#include<iomanip>
#include<cmath>
using namespace std;
int main()
{
	int i, j, k, n, N;

	cout.precision(4);		// 정밀도 설정
	cout.setf(ios::fixed);
	// 회귀 분석할 데이터의 개수(샘플 개수)
	cout << "\nEnter the No. of data pairs to be entered:\n";
	cin >> N;

	double x[N], y[N];

	// x 축의 값 입력
	cout << "\nEnter the x-axis values:\n";

	for(i = 0; i < N; i++)
		cin >> x[i];

	// y 축의 값 입력
	cout << "\nEnter the y-axis values:\n";

	for(i = 0; i < N; i++)
		cin >> y[i];

	// N 차 함수로 회귀 분석
	cout << "\nWhat degree of Polynomial do you want to use for the fit?\n";
	cin >> n;

	// 회귀 분석에서 사용하는 미분 항들(sigma(xi), sigma(xi^2), ...)
	double X[2 * n + 1];

	for(i = 0; i < 2 * n + 1; i++)
	{
		X[i] = 0;
		for(j = 0; j < N; j++)
			X[i] = X[i] + pow(x[j], i);	// sigma 계산
	}

	// B 는 방정식을 저장하는 정규 행렬이고 a 는 계수(연립 방정식 상기)
	double B[n+1][n+2], a[n+1];

	// 행렬의 마지막 열을 제외하여 재배치(Ax = B)
	for(i = 0; i <= n; i++)
		for (j = 0; j <= n; j++)
			B[i][j] = X[i+j];

	// sigma(yi), sigma(xi * yi), sigma(xi^2 * yi) ... 배열
	double Y[n+1];

	for(i = 0; i < n + 1; i++)
	{    
		Y[i] = 0;
		for(j = 0; j < N; j++)
			Y[i] = Y[i] + pow(x[j], i) * y[j];		// 실제 계산
	}

	for(i = 0; i <= n; i++)
		B[i][n + 1] = Y[i];		// Y 의 값을 B 의 마지막 열로 로드

	n = n + 1;		// 가우스 소거법 기반으로 가기 위해 n + 1

	// 계산된 sigma 결과 값들을 출력
	cout << "\nThe Normal(Augmented Matrix) is as follows:\n";    

	for(i = 0; i < n; i++)
	{
		for(j = 0; j <= n; j++)
			cout << B[i][j] << setw(16);

		cout << "\n";
	}

	// 가우스 소거법
	for(i = 0; i < n; i++)
		for(k = i + 1; k < n; k++)
			if(B[i][i] < B[k][i])
				for(j = 0; j <= n; j++)
				{
					double temp = B[i][j];
					B[i][j] = B[k][j];
					B[k][j] = temp;
				}

	// 실제 연산
	for(i = 0; i < n - 1; i++)
		for(k = i + 1; k < n; k++)
		{
			double t = B[k][i] / B[i][i];
			for(j = 0; j <= n; j++)
				B[k][j] = B[k][j] - t * B[i][j];	// 대각 원소 아래의 요소를 0
		}

	// 최종 계산
	for(i = n - 1; i >= 0; i--)
	{
		a[i] = B[i][n];
		for(j = 0; j < n; j++)
			if(j != i)
				a[i] = a[i] - B[i][j] * a[j];

		a[i] = a[i] / B[i][i];
	}

	cout << "\nThe values of the coefficients are as follows:\n";

	for(i = 0; i < n; i++)
		cout << "x^" << i << "=" << a[i] << endl;

	cout << "\nHence the fitted Polynomial is given by:\ny=";

	for(i = 0; i < n; i++)
		cout << " + (" << a[i] << ")" << "x^" << i;

	cout << "\n";

	return 0;
}
