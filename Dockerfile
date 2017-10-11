FROM debian
RUN apt-get update && apt-get -y install python python-requests python-pip python-opencv
RUN apt-get -y install opencv && rm -f /var/cache/apt/archives/*.deb
RUN mkdir /data
VOLUME /data
