#!/bin/bash

# Installation globale
apt-get update
apt-get install -y fail2ban

# Installation de Docker
apt-get install -y apt-transport-https ca-certificates
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo debian-jessie main" > /etc/apt/sources.list.d/docker.list
apt-get update
apt-get install -y docker-engine docker-compose
service docker start

# Installation de ZSH
apt-get install -y git zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
