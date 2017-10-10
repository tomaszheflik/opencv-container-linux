FROM ubuntu
RUN apt-get update; \
    apt-get install -y build-essential; \
    apt-get install -y cmake pkg-config; \
    apt-get install -y libgtk2.0-dev python-dev python-numpy libpng12-0 libpng12-dev libpng++-dev libpng3 libpnglite-dev libpngwriter0-dev libpngwriter0c2 zlib1g-dbg zlib1g zlib1g-dev pngtools libjasper-dev libjasper-runtime libjasper1 libjpeg8 libjpeg8-dbg libjpeg62 libjpeg62-dev libjpeg-progs libtiff4-dev libtiff4 libtiffxx0c2 libtiff-tools ffmpeg libavcodec-dev libavcodec52 libavformat52 libavformat-dev libswscale0 libswscale-dev openexr libopenexr6 libopenexr-dev; \
    apt-get install -y libgstreamer0.10-0-dbg libgstreamer0.10-0 libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libxine1-ffmpeg libxine-dev libxine1-bin libunicap2 libunicap2-dev libucil2 libucil2-dev libdc1394-22-dev libdc1394-22 libdc1394-utils libv4l-0 libv4l-dev; \
RUN wget http://downloads.sourceforge.net/project/opencvlibrary/opencv-unix/2.4.2/OpenCV-2.4.2.tar.bz2
RUN tar xvjf OpenCV-2.4.2.tar.bz2
RUN cd ~/opencv/OpenCV-2.4.2; mkdir release; cd release
RUN cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D BUILD_ZLIB=ON -D BUILD_PYTHON_SUPPORT=ON ~/opencv/OpenCV-2.4.2
RUN make; make install

RUN git clone https://github.com/opencv/opencv.git

