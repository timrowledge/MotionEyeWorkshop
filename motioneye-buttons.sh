#!/bin/sh
# load button scripts for motioneye for Raspbian Stretch 20171129
# run under sudo

cp *_1 /etc/motioneye/
chmod ugo+x /etc/motioneye/*_1
cp PCA9685_pantilt.py ..