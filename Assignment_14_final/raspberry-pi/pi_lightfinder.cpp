// Basic serial read - write
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <termios.h>
#include <string.h>
#include <opencv2/opencv.hpp>

class LightFinder
{
public:
  LightFinder()
  {
  }

public:

    // Callback function for the image topic
    void image_callback(cv::Mat cvImage, int& x, int& y) {

        // Convert image to grayscale image
        cv::Mat gray;
        cv::cvtColor(cvImage, gray, cv::COLOR_BGR2GRAY);

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

#define SERIAL_PORT "/dev/ttyS0"
#define BAUD_RATE B115200

int main() {
    cv::VideoCapture cap(0);

    if (!cap.isOpened()) {
        std::cerr <<"VideoCapture not opened"<< std::endl;
        return -1;
    }

    int x, y = 0;
    LightFinder lightfinder;

    int serial_fd;
    struct termios tty;

    // Open the serial port
    serial_fd = open(SERIAL_PORT, O_RDWR | O_NOCTTY);
    if (serial_fd < 0) {
        perror("Error opening serial port");
        return 1;
    }

    // Get the current serial port settings
    tcgetattr(serial_fd, &tty);

    // Set the baud rate
    cfsetospeed(&tty, BAUD_RATE);
    cfsetispeed(&tty, BAUD_RATE);

    // Set 8N1 (8 data bits, no parity, 1 stop bit)
    tty.c_cflag &= ~CSIZE;  // Clear the data size bits
    tty.c_cflag |= CS8;     // Set data size to 8 bits
    tty.c_cflag &= ~PARENB; // Disable parity bit
    tty.c_cflag &= ~CSTOPB; // Set one stop bit

    // Set non-canonical mode
    tty.c_lflag = 0;

    // Apply the new serial port settings
    tcsetattr(serial_fd, TCSANOW, &tty);

    while(1) {
        cv::Mat frame;
        cap.read(frame);

        lightfinder.image_callback(frame, x, y);

        // Write data to the serial port
        std::string message = '<' + std::to_string(x) + ',' + std::to_string(y) + '>';
        write(serial_fd, message.c_str(), message.length());
        std::cout << message << std::endl;
				
        char buffer[256];
    }

    // Close the serial port
    close(serial_fd);
    return 0;
}