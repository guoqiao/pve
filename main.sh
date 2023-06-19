#!/bin/bash

set -xue

cd /etc/apt/sources.list.d/

[ -f pve-enterprise.list ] && sudo mv pve-enterprise.list pve-enterprise.list.save

echo "deb http://download.proxmox.com/debian/pve bullseye pve-no-subscription" | sudo tee pve-no-subscription.list
cat pve-no-subscription.list

sudo apt update
sudo apt upgrade -y

sudo apt install -y \
	ssh-import-id \
	git \
	vim \
	curl \
	htop \
	s-tui \
	sudo \
	tree \
	wget \
	ethtool \
	dnsutils \
	neofetch \
	net-tools \
	silversearcher-ag \
	lm-sensors \
	zsh

ssh-import-id gh:guoqiao
