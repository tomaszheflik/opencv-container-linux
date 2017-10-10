FROM ubuntu:16.04
#RUN apt-get update; \
#    apt-get install -y libopencv-dev python-opencv
ADD install.sh /install.sh
RUN bash /install.sh


