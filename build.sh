#!/bin/bash

set -x

export NGINX_VERSION=1.23.2
export NSSM_VERSION=2.24

pushd build
rm -rf *
popd

pushd tmp
rm -rf *
popd

make