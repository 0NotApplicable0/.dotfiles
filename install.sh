#!/bin/bash                                    
#Install script for NotApplicable's .dotfiles! 
#VERSION: 2.0.0                                

# System Check           #
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac
echo "== User's System: ${machine} =="

if [ ${machine} = "Mac" ]; then
  . ./install-mac.sh
fi

if [ ${machine} = "Linux" ]; then
  . ./install-linux.sh
fi
