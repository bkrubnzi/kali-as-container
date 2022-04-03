#!/bin/bash

service xrdp restart
./root/set_pass.expect root toor
/bin/bash
