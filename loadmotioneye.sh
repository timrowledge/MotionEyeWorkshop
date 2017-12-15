#!/bin/sh
# load motioneye for Raspbian Stretch 20171129
# run under sudo

apt-get -y install ffmpeg v4l-utils
apt-get -y install libmariadbclient18 libpq5
wget https://github.com/Motion-Project/motion/releases/download/release-4.1/pi_stretch_motion_4.1-1_armhf.deb
dpkg -i pi_stretch_motion_4.1-1_armhf.deb
apt-get -y install python-pip python-dev libssl-dev libcurl4-openssl-dev libjpeg-dev
pip install motioneye
mkdir -p /etc/motioneye
 cp /usr/local/share/motioneye/extra/motioneye.conf.sample /etc/motioneye/motioneye.conf
 mkdir -p /var/lib/motioneye
  cp /usr/local/share/motioneye/extra/motioneye.systemd-unit-local /etc/systemd/system/motioneye.service
 systemctl daemon-reload
 systemctl enable motioneye
 systemctl start motioneye
