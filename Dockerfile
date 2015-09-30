From philipz/rpi-raspbian
MAINTAINER Johannes Hertel

RUN apt-get update && apt-get -y install wget
RUN mkdir /etc/z-way && touch /etc/z-way/box_type && wget -q -O - razberry.z-wave.me/install | bash
 




