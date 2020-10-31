#!/bin/bash
apt-get update

apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common 

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ \
    ubuntu bionic \
    stable"

apt-get update

apt-cache policy docker-ce

apt-get install docker-ce -y

