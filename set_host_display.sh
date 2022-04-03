#!/bin/bash
IP=`ipconfig getifaddr en0`
xhost + $IP
