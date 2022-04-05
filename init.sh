#!/bin/bash

service xrdp restart
./root/scripts/set_pass.expect root toor
/bin/bash
