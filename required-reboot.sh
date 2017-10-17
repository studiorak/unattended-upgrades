#!/bin/bash

# /usr/local/sbin/required_reboot.sh
# managed by puppet 

if [ -s /var/run/reboot-required.pkgs ] ; then 
  echo OK
else 
  echo KO
fi 
