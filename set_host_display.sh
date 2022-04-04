#!/bin/bash
export IP=`ipconfig getifaddr en0`
if  command -v xhost &> /dev/null
then
    xhost + $IP
fi

