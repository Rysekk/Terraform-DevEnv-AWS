#!/bin/bash
LOG_FILE="/tmp/installation.log"

sudo apt-get update -y &&
sudo apt-get install -y \
apt-transport-https \
ca-certificates \
curl \
gnupg-agent \
software-properties-common | tee -a $LOG_FILE && 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - | tee -a $LOG_FILE &&
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" &&
sudo apt-get update -y &&
sudo apt-get install docker-ce-cli containerd.io -y | tee -a $LOG_FILE &&
sudo usermod -aG docker ubuntu | tee -a $LOG_FILE