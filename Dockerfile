From hypriot/rpi-node
MAINTAINER Johannes Hertel

# Set noninteractive mode for apt-get
#ENV DEBIAN_FRONTEND noninteractive

# Upgrade base system packages
RUN apt-get update && apt-get -y install wget 
RUN mkdir /etc/z-way && touch /etc/z-way/box_type

#need to export 8083 and 8084

EXPOSE \
    8083 \
    8084
#
#
#

#ADD scr/box_type /etc/z-way/box_type 

RUN wget -q -O - razberry.z-wave.me/install | bash

CMD /etc/init.d/z-way-server start
 




