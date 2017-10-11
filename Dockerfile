FROM debian:9
RUN apt-get update && apt-get -y install python python-requests python-pip python-opencv
#RUN apt-get -y install opencv2 && rm -f /var/cache/apt/archives/*.deb
RUN pip install opencv-python tornado
RUN mkdir /data
VOLUME /data
