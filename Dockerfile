FROM debian:9
RUN apt-get update && apt-get -y install python python-requests python-pip python-opencv && rm -f /var/cache/apt/archives/*.deb
RUN pip install picamera cv2 tornado
