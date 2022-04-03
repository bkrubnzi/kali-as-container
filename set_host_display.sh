#!/bin/bash
IP=`ipconfig getifaddr en0`
DISPLAY=$IP:0
xhost + $IP
