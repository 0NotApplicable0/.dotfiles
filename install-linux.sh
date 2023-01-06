#!/bin/sh 
# This install script is for Ubuntu and its derivatives

# sudo check, to ensure everything installs correctly we need sudo #
if [ $EUID -ne 0 ]; then
   echo "Error: This script must be run as root" 
   exit 1
fi

# Update #
echo "== Updating and upgrading =="
apt update
apt upgrade
apt install wget
apt install fontconfig
dpkg-reconfigure console-setup

# Install Hack Font #
wget https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip
unzip Hack-v3.003-ttf.zip
mkdir /usr/share/fonts/
mv ttf/* /usr/share/fonts/
fc-cache -f -v

# Install Fish & Dependencies #
echo "== Installing FISH =="
apt install fish

echo "== Please run the next install script in Fish, you will be switched =="
fish

