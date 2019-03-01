#include <opencv2/highgui/highgui.hpp>
#include <opencv2/opencv.hpp>
#include <iostream>

using namespace cv;
using namespace std;

int main(int argc, char **argv)
{
	int w, h;
	int rgb_threshold[4] = {215, 225, 245};

	Mat img = imread("sample.jpg", -1);
	Mat filter_img(img);

	h = img.rows;
	w = img.cols;

	if(img.empty())
		return -1;

	imshow("Second Image", img);

	cvtColor(img, img, COLOR_BGR2RGB);

	for(int y = 0; y < h; y++)
	{
		for(int x = 0; x < w; x++)
		{
			if(img.at<Vec3b>(y, x)[0] < rgb_threshold[0])
				filter_img.at<Vec3b>(y, x)[0] = 0;
			if(img.at<Vec3b>(y, x)[1] < rgb_threshold[1])
				filter_img.at<Vec3b>(y, x)[1] = 0;
			if(img.at<Vec3b>(y, x)[2] < rgb_threshold[2])
				filter_img.at<Vec3b>(y, x)[2] = 0;
		}
	}

	imshow("Filter Image", filter_img);

	waitKey(0);

	destroyWindow("Second Image");
	destroyWindow("Filter Image");

	return 0;
}
