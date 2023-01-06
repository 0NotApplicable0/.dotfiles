#!/bin/bash 
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

# Install Other Packages #
apt install peco

# Install Other Dependencies #
echo "== Installing stow =="
apt-get install stow
echo "== Installing Build Essentials =="
apt-get install build-essential
apt-get install g++ gdb
apt-get install clang++-3.8 lldb
apt-get install gcc-multilib g++-multilib
echo "== Installing Node =="
apt install nodejs

# Install Neovim & Dependencies #
apt install neovim
apt install lua-language-server
npm install -g typescript-language-server typescript
npm install -g @fsouza/prettierd
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Install Exa From Source #
EXA_VERSION=$(curl -s "https://api.github.com/repos/ogham/exa/releases/latest" | grep -Po '"tag_name": "v\K[0-9.]+')
curl -Lo exa.zip "https://github.com/ogham/exa/releases/latest/download/exa-linux-x86_64-v${EXA_VERSION}.zip"
sudo unzip -q exa.zip bin/exa -d /usr/local
rm -rf exa.zip

# Install Fish & Dependencies #
echo "== Installing FISH =="
apt install fish
echo "== Please run the next install script in Fish, you will be switched =="
fish

