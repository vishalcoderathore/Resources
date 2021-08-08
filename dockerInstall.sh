#!/bin/bash

echo " "
echo "## Get Updates"
sudo apt-get update

## Uncomment the following lines to install Node.JS
#echo " "
#echo '## Install Node.js'
#curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
#sudo apt-get install -y nodejs

echo " "
echo "=> Update the apt package index"
sudo apt-get update
echo "=> Install packages to allow apt to use a repository over HTTPS:"
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

echo " "
echo "=> Install Docker Machine"
curl -L https://github.com/docker/machine/releases/download/v0.16.2/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine &&
    chmod +x /tmp/docker-machine &&
    sudo cp /tmp/docker-machine /usr/local/bin/docker-machine

echo " "
echo "=> Install Docker Compose"
sudo curl -L https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
echo "=> Apply executable permissions to the binary:"
sudo chmod +x /usr/local/bin/docker-compose

echo " "
echo "****************************************************************************"
echo "Docker Machine installed!"
echo "Docker Compos  installed!"
echo "****************************************************************************"
