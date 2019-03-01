#include <opencv2/highgui/highgui.hpp>
#include <opencv2/opencv.hpp>
#include <iostream>
#include <stdio.h>

using namespace cv;
using namespace std;

int main(int argc, char **argv)
{
	Mat img = imread("sample.jpg", -1);

	int h = img.rows;
	int w = img.cols;

	printf("h = %d, w = %d\n", h, w);

	if(img.empty())
		return -1;

	printf("h - 310 = %d, w - 539 = %d, h - 120 = %d, w - 475 = %d\n",
			h - 310, w - 539, h - 120, w - 475);

	//Mat roi = img(Range(h - 310, w - 539), Range(h - 120, w - 475));
	//Mat roi = img(Range(310, 539), Range(120, 475));
	//Mat roi = img(Range(310, 475), Range(539, 539));
	//Mat roi = img(Range(539, 800), Range(310, 120));
	//Mat roi = img(Range(310, 120), Range(539, 800));
	Mat roi = img(Range(310, 539), Range(120, 800));

	imshow("Original Image", img);
	imshow("ROI Image", roi);

	waitKey(0);

	destroyWindow("ROI Image");
	destroyWindow("Original Image");

	return 0;
}
