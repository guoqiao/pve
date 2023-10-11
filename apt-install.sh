#!/bin/bash

set -xue


sudo apt update
sudo apt upgrade -y

sudo apt install -y \
	git \
	tig \
	vim \
	curl \
	htop \
	s-tui \
	sudo \
	tree \
	fd-find \
	tmux \
	wget \
	ethtool \
	dnsutils \
	neofetch \
	net-tools \
	silversearcher-ag \
	lm-sensors \
	lshw \
	pve-headers \
	glibc-source \
	python3-pip \
	python3-venv \
	zsh
