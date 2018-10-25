#include <opencv2/highgui/highgui.hpp>
#include <opencv2/opencv.hpp>
#include <iostream>

using namespace cv;
using namespace std;

int main(int argc, char **argv)
{
	Mat img = imread("sample.jpg", -1);

	int h = img.rows;
	int w = img.cols;

	if(img.empty())
		return -1;

	Mat roi = img(Range(310, 539), Range(120, 475));

	imshow("ROI Image", roi);

	waitKey(0);

	destroyWindow("ROI Image");

	return 0;
}
