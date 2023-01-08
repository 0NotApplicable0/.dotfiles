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

# Install Required Packages #
apt install wget
apt install curl
apt install fontconfig
apt install unzip

# Reconfigure Console Font #
dpkg-reconfigure console-setup

# Add Required Repositories #
apt-add-repository ppa:fish-shell/release-3
apt-add-repository ppa:neovim-ppa/unstable 
apt update

# Install Hack Font #
wget https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip
unzip Hack-v3.003-ttf.zip
mkdir /usr/share/fonts/
mv ttf/* /usr/share/fonts/
fc-cache -f -v

# Install Other Dependencies #
apt install peco
apt install stow
apt install build-essential
apt install g++ gdb
apt install clang++-3.8 lldb
apt install gcc-multilib g++-multilib

# Install Neovim & Dependencies #
apt install software-properties-common
apt update

# Neovim #
apt install neovim

# Install Fish #
apt install fish

# Install ZSH #
apt install zsh
cp zsh/custom/resources/lambda-zsh-theme/cdimascio-lambda.zsh-theme zsh/custom/themes/cdimascio-lambda.zsh-theme
cp zsh/custom/resources/spaceship-prompt/spaceship.zsh-theme zsh/custom/themes/spaceship.zsh-theme

echo "== Install Complete =="

echo "
=======================================================================================
Additonal notes: 
\n 1. If you are on WSL you can type 'code' to install vscode-server
\n 2. After install, make sure you set your default shell 
\n 3. Then reboot your shell to see reflected changes
\n 4. To finish install of neovim and fish pelase follow the README.md 
=======================================================================================
"
