# uninstall old cv

sudo apt-get remove libopencv
sudo apt-get remove opencv

cd OpenCV/build
sudo make uninstall

# update dependencies
sudo apt-get install build-essential
sudo apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev

# clone new cv
cd /opt
sudo git clone https://github.com/Itseez/opencv.git
sudo git clone https://github.com/Itseez/opencv_contrib.git

# config
cd opencv
sudo mkdir release
cd release
sudo cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D OPENCV_EXTRA_MODULES_PATH=/opt/opencv_contrib/modules /opt/opencv/

# make and install
sudo make
sudo make install

# check
pkg-config --modversion opencv

# common problems
# Old version of GCC! Please make sure you have a recent version of GCC (I recommend 4.8.X or higher)
# You did not install all the required packages! Please install the packages (find them in the beginning of the article)
# You executed the cmake in the wrong directory, or you pointed the sources to an invalid location
