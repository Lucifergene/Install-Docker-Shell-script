#!/bin/bash

apt update -y
apt-get remove docker docker-engine docker.io -y
apt install docker.io -y
systemctl start docker
systemctl enable docker

