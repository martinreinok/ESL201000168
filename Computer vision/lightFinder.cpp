
#include <opencv2/opencv.hpp>

class lightFinder 
{
public:
  lightFinder()
  {
  }

public:

    // Callback function for the image topic
    void image_callback(cv::Mat cvImage, int& x, int& y) {

        // Convert image to grayscale image
        cv::Mat gray;
        cv::cvtColor(cv_ptr->image, gray, cv::COLOR_BGR2GRAY);

        // Finding the COG of light
        // Thresholding
        int threshold_low = 75;
        int threshold_high = 150;
        cv::Mat thresholded;
        cv::threshold(gray, thresholded, threshold_low, threshold_high, cv::THRESH_BINARY);

        // For Center of Mass, Moments are used
        cv::Moments moment = cv::moments(thresholded, false);
        x = static_cast<int>(moment.m10 / moment.m00);
        y = static_cast<int>(moment.m01 / moment.m00);

        // Draw point to grayscale image
        cv::Point center_coords(moment.m10/moment.m00, moment.m01/moment.m00);
        cv::circle(gray, center_coords, 5, cv::Scalar(0,0,0), -1);
  }
};
