FROM debian
RUN apt-get update && apt-get -y install python python-requests python-pip python-opencv && rm -f /var/cache/apt/archives/*.deb
RUN pip install cv2 tornado
