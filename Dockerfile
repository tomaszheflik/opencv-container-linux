FROM ubuntu
RUN apt-get update; \
    apt-get install -y build-essential; \
    apt-get install -y cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev; \
    apt-get install -y python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev;
RUN git clone https://github.com/opencv/opencv.git
RUN cd opencv; mkdir release; cd release
RUN cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local ..
