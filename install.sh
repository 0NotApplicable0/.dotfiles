# !/bin/bash                                    #
# Install script for NotApplicable's .dotfiles! #
# VERSION: 1.0.1                                #

# System Check           #
# Currently Does Nothing #
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac
echo "\n == User's System: ${machine} == \n"

if [ $EUID -ne 0 ]; then
   echo "This script must be run as root" 
   exit 1
fi

# Update #
echo "\n == Updating and upgrading == \n"
apt-get update
apt-get upgrade

# Install ZSH #
echo "\n == Installing ZSH == \n"
apt-get install zsh

# Install Other Dependencies #
echo "\n == Installing stow == \n"
apt-get install stow
echo "\n == Installing Build Essentials == \n"
apt-get install build-essential
apt-get install g++ gdb
apt-get install clang++-3.8 lldb
apt-get install gcc-multilib g++-multilib

# Move Theme Files #
cp zsh/custom/resources/lambda-zsh-theme/cdimascio-lambda.zsh-theme zsh/custom/themes/cdimascio-lambda.zsh-theme
cp zsh/custom/resources/spaceship-prompt/spaceship.zsh-theme zsh/custom/themes/spaceship.zsh-theme


# Create simlinks for dotfiles #
echo "\n == Creating SimLinks == \n"
sudo stow zsh
sudo stow vim
cd ..
sudo rm custom
sudo rm config.vim

# Cleanup #
read -p "Delete old bashrc files? [Y/n]" delOld

if [ $delOld = 'Y' ]; then
    echo "\n == Deleting bashrc files == \n"
    sudo rm .bash_history
    sudo rm .bash_logout
    sudo rm .bashrc
else
    echo "\n == Skipping deletion of bashrc files == \n"
fi

echo "
=======================================================================================
Additonal notes: 
\n 1. If you are on WSL you can type 'code' to install vscode-server
\n 2. After install, run 'chsh -s $(which zsh)' to set ZSH as your default shell
=======================================================================================
"
