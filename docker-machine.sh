#!/bin/bash

wget https://github.com/docker/machine/releases/download/v0.6.0/docker-machine-$(uname -s)-$(uname -m)
mv docker-machine-* docker-machine
chmod +x docker-machine
mv docker-machine /usr/bin

docker-machine version

