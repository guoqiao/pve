#!/bin/bash

set -xue

cd /etc/apt/sources.list.d/

[ -f pve-enterprise.list ] && mv pve-enterprise.list pve-enterprise.list.save

echo "deb http://download.proxmox.com/debian/pve bullseye pve-no-subscription" > pve-no-subscription.list
cat pve-no-subscription.list

apt update
apt upgrade -y

apt install -y \
	ssh-import-id \
	git \
	vim \
	curl \
	htop \
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
