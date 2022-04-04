#!/bin/bash
export IP=`ipconfig getifaddr en0`
xhost + $IP
