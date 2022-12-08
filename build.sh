#!/bin/bash

set -x

latestVer=$(curl -s 'http://nginx.org/en/download.html' | 
   sed 's/</\'$'\n''</g' | sed -n '/>Stable version$/,$ p' | 
   egrep -m1 -o '/download/nginx-.+\.tar\.gz' | grep -Po '(?<=nginx-).*(?=\.tar\.gz)')

export NGINX_VERSION="$latestVer"
export NSSM_VERSION=2.24

pushd build
rm -rf *
popd

pushd tmp
rm -rf *
popd

make