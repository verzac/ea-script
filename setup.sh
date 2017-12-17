#!/bin/sh
set -e;
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

# chmods
chmod 744 setupnginx.sh;
chmod 744 setupubuntu.sh;
chmod 744 setupwpstack.sh;

./setupubuntu.sh;
./setupwpstack.sh;
./setupnginx.sh;