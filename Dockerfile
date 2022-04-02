FROM kalilinux/kali-rolling
MAINTAINER Charles Peters <bkrubnzi@frankencloud.net>

RUN apt update && \
        DEBIAN_FRONTEND=noninteractive apt upgrade -y && \
        DEBIAN_FRONTEND=noninteractive apt install kali-linux-default -y && \
        apt autoremove -y && \
        apt autoclean -y
RUN apt-get install -y kali-desktop-xfce xrdp && \
        apt autoremove -y && \
        apt autoclean -y
RUN SOURCE="deb http://downloads.sourceforge.net/project/ubuntuzilla/mozilla/apt all main";echo $SOURCE >> etc/apt/sources.list; \
        apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 2667CA5C;
        apt update && \
        apt install -y firefox-mozilla-build
RUN git clone https://github.com/neutrinolabs/xorgxrdp.git /tmp/; \
	apt install -y xserver-xorg-dev; \
	apt-get install -y autoconf libtool pkg-config libz-dev libssl-dev libcurl4-gnutls-dev libexpat1-dev gettext cmake gcc curl; \
	sh -c /tmp/xorgxrdp/bootstrap; \
	sh -c /tmp/xorgxrdp/configure; \
	make -C /tmp/xorgxrdp/; \
        make -C /tmp/xorgxrdp/ install
