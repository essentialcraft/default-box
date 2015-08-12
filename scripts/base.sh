#!/usr/bin/env bash

#> /dev/null 2>&1

echo "----Install pip"
wget "https://bootstrap.pypa.io/get-pip.py"
python get-pip.py

echo "----Run a base bash script"
sudo apt-get update
sudo apt-get -y install git
sudo apt-get -y install vim

echo "----Install nodejs"
curl --silent --location https://deb.nodesource.com/setup_0.12 | sudo bash -
sudo apt-get install -y nodejs

echo "----Install grunt"
sudo npm install -g grunt-cli
sudo npm install -g pm2

echo "----Install docker"
curl -sSL https://get.docker.com/ | sh

#echo "Install build-essential, collectd"
#sudo apt-get -y install build-essential git gdebi-core debhelper devscripts dh-make

echo "----Vagrant box is made"




