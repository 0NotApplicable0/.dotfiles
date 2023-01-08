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
sudo apt-add-repository ppa:fish-shell/release-3
sudo add-apt-repository ppa:neovim-ppa/unstable 

# Install Hack Font #
wget https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip
unzip Hack-v3.003-ttf.zip
mkdir /usr/share/fonts/
mv ttf/* /usr/share/fonts/
fc-cache -f -v

# Install Other Dependencies #
apt install peco
echo "== Installing stow =="
apt-get install stow
echo "== Installing Build Essentials =="
apt-get install build-essential
apt-get install g++ gdb
apt-get install clang++-3.8 lldb
apt-get install gcc-multilib g++-multilib

# Installing Node & NVM #
echo "== Installing Node =="
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install node

# Install Neovim & Dependencies #
sudo apt install software-properties-common
sudo apt update

# Neovim + Packer #
apt install neovim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Install Neovim Plugin Dependencies #
npm install -g typescript-language-server typescript
npm install -g @fsouza/prettierd

# Install Exa From Source #
EXA_VERSION=$(curl -s "https://api.github.com/repos/ogham/exa/releases/latest" | grep -Po '"tag_name": "v\K[0-9.]+')
curl -Lo exa.zip "https://github.com/ogham/exa/releases/latest/download/exa-linux-x86_64-v${EXA_VERSION}.zip"
sudo unzip -q exa.zip bin/exa -d /usr/local
rm -rf exa.zip

# Install Fish & Dependencies #
echo "== Installing FISH =="
apt install fish

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
