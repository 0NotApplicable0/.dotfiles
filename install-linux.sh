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


# Install ZSH #
echo "== Installing FISH =="
apt-get install fish

# Install Other Dependencies #
echo "== Installing stow =="
apt-get install stow
echo "== Installing Build Essentials =="
apt-get install build-essential
apt-get install g++ gdb
apt-get install clang++-3.8 lldb
apt-get install gcc-multilib g++-multilib

echo "
=======================================================================================
Additonal notes: 
\n 1. If you are on WSL you can type 'code' to install vscode-server
\n 2. After install, make sure you change your default shell
\n 3. Then reboot your shell to see reflected changes
=======================================================================================
"
