#!/bin/bash
apt update -y && apt upgrade -y
sudo apt remove -y docker docker-engine docker.io
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key -y fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt -y update
sudo apt install -y docker-ce
sudo apt-get install -y docker-compose
sudo usermod -aG docker $USER
