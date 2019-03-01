#include <opencv2/highgui/highgui.hpp>
#include <opencv2/opencv.hpp>
#include <iostream>
#include <stdio.h>

using namespace cv;
using namespace std;

int main(int argc, char **argv)
{
	Mat img = imread("sample.jpg", -1);

	if(img.empty())
		return -1;

	Mat blur;
	GaussianBlur(img, blur, Size(3, 3), 0, 0);

	imshow("Original Image", img);
	imshow("Gaussian Blur Image", blur);

	waitKey(0);

	destroyWindow("Gaussian Blur Image");
	destroyWindow("Original Image");

	return 0;
}
