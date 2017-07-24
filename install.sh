#!/bin/bash

# Installation globale
apt-get update
apt-get install -y fail2ban vim
locale-gen fr_FR.UTF-8
dpkg-reconfigure locales

# Installation de Docker
apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
apt-get update
apt-get install -y docker-ce
service docker start

# Installation de Docker Compose
wget "https://github.com/docker/compose/releases/download/1.14.0/docker-compose-$(uname -s)-$(uname -m)" -O /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# Installation de ZSH
apt-get install -y git zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
