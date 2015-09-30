From philipz/rpi-raspbian
MAINTAINER Johannes Hertel

# Set noninteractive mode for apt-get
#ENV DEBIAN_FRONTEND noninteractive

# Upgrade base system packages
RUN apt-get update && apt-get -y install wget
RUN mkdir /etc/z-way && touch /etc/z-way/box_type && wget -q -O - razberry.z-wave.me/install | bash

#EXEC /etc/init.d/z-way-server start
 




