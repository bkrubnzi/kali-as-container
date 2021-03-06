FROM kalilinux/kali-rolling
MAINTAINER Charles Peters <bkrubnzi@frankencloud.net>

RUN apt update && \
        DEBIAN_FRONTEND=noninteractive apt upgrade -y && \
        DEBIAN_FRONTEND=noninteractive apt install kali-linux-default -y 
RUN apt-get install -y kali-desktop-xfce xrdp
RUN SOURCE="deb http://downloads.sourceforge.net/project/ubuntuzilla/mozilla/apt all main";echo $SOURCE >> etc/apt/sources.list && \
        apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 2667CA5C &&\
        apt update && \
        apt install -y firefox-mozilla-build
RUN apt-get install -y xserver-xorg-dev autoconf libtool pkg-config libz-dev libssl-dev libcurl4-gnutls-dev libexpat1-dev gettext cmake gcc curl &&\
        apt autoremove -y && \
        apt autoclean -y
RUN git clone https://github.com/neutrinolabs/xorgxrdp.git /tmp/xorgxrdp/ && \
        cd /tmp/xorgxrdp; sh -c /tmp/xorgxrdp/bootstrap && \
	cd /tmp/xorgxrdp; sh -c /tmp/xorgxrdp/configure && \
	make -C /tmp/xorgxrdp/ && \
        make -C /tmp/xorgxrdp/ install
RUN apt-get install -y inetutils-ping feroxbuster &&\
        apt autoremove -y &&\
        apt autoclean -y
#RUN wget https://dl.pstmn.io/download/latest/linux64 --content-disposition --directory-prefix /root &&\
#        cd /root/;FILENAME=`ls post*`;tar -xzf $FILENAME;rm $FILENAME;mkdir apps;mv Postman apps;ln -s ~/apps/Postman/Postman postman
