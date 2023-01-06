#!/bin/sh 
# This install script is for Ubuntu and its derivatives

# sudo check, to ensure everything installs correctly we need sudo #
if [ $EUID -ne 0 ]; then
   echo "Error: This script must be run as root" 
   exit 1
fi

# Update #
echo "== Updating and upgrading =="
apt-get update
apt-get upgrade
apt-get install unzip

# Install Hack Font #
curl -sL https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip
unzip Hack-v3.003-ttf.zip
mv Hack-v3.003-ttf /usr/share/fonts/
fc-cache -f -v

# Install Fish & Dependencies #
echo "== Installing FISH =="
apt-get install fish
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install jethrokuan/z
apt install exa
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
apt install node

# Install Neovim & Dependencies #
apt install neovim
apt install lua-language-server
npm install -g typescript-language-server typescript
npm install -g @fsouza/prettierd
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo "
=======================================================================================
Additonal notes: 
\n 1. If you are on WSL you can type 'code' to install vscode-server
\n 2. After install, make sure you set your default shell 
\n 3. Then reboot your shell to see reflected changes
\n 4. To finish install of nvim ensure you start nvim and run :PackerInstall and :MasonInstall eslint_d
=======================================================================================
"
