#!/bin/bash

set -x

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

apt update
apt-get install -y nsis
