#!/bin/bash

systemctl enable --now xrdp snapd apparmor
./root/scripts/set_pass.expect root toor
service xrdp restart
/bin/bash
