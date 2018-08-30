FROM debian:latest

ENV command --help

RUN apt-get update -y 
RUN apt-get install -y build-essential \
	libusb-1.0.0-dev \
	git \
	pkg-config

RUN git clone https://github.com/evilwombat/gopro-usb-tools.git
WORKDIR gopro-usb-tools
RUN make
RUN ls
ENTRYPOINT ["/bin/sh"]
