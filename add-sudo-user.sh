#!/bin/bash

# e.g.: guoqiao
username=$1

sudo adduser $username
sudo usermod -aG sudo $username
id $username

echo "%sudo ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/sudo

