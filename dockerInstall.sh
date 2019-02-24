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
echo "## Setup the Repository (Docker CE)"
echo "=> Update the apt package index"
sudo apt-get update
echo "=> Install packages to allow apt to use a repository over HTTPS:"
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
echo "=> Add Docker’s official GPG key:"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo "=> Set up the stable repository"
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

echo " "
echo "## Install Docker CE"
echo "=> Update the apt package index"
sudo apt-get update
echo "=> Install the latest version of Docker CE"
sudo apt-get install -y docker-ce

echo " "
echo "## Install Docker Compose"
echo "=> Download the latest version of Docker Compose:"
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
echo "=> Apply executable permissions to the binary:"
sudo chmod +x /usr/local/bin/docker-compose

## Post Docker Intallation Script 
## Step 1 Create the docker group
sudo groupadd docker
## Step 2 Add your user to the docker group
sudo usermod -aG docker $USER

echo " "
echo "****************************************************************************"
echo " "
echo "Docker CE installed!"
echo "Docker Compose installed!"
echo "Plese log out and log back in to use Docker!"
