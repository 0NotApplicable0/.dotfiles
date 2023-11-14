#!/bin/bash

# Helper Functions Setup #
brew_install() {
    echo "Installing $1"
    if brew list $1 &>/dev/null; then
        echo "${1} is already installed"
    else
        brew install $1 && echo "$1 is installed"
    fi
}
##########################

# Sudo Check
if [ $EUID == 0 ]; then
   echo "Please do not run this script as root!" 
   exit 1
fi

# Install Package Manager (BREW)
which -s brew
if [[ $? != 0 ]] ; then
    echo "Homebrew not installed, intalling..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew already installed, updating instead..."
    brew update
fi

# Install Packages
brew_install stow
brew_install peco
brew_install neovim
brew_install exa

# NVM SETUP
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

# ZSH SETUP
brew_install zsh
mkdir zsh/custom/themes
cp zsh/custom/resources/lambda-zsh-theme/cdimascio-lambda.zsh-theme zsh/custom/themes/cdimascio-lambda.zsh-theme
cp zsh/custom/resources/spaceship-prompt/spaceship.zsh-theme zsh/custom/themes/spaceship.zsh-theme

# FISH SETUP
brew_install fish
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install ilancosman/tide@v5
fisher install jethrokuan/z

# Stow Configurations
stow nvim
stow fish
stow zsh

# After Install
source ~/.zshrc

echo "\n\n"
echo "After install steps:"
echo " - Add 'nvm' to PATH if its not automatically added with <export NVM_DIR=\"$HOME/.nvm\" [ -s \"$NVM_DIR/nvm.sh\" ] && \. \"$NVM_DIR/nvm.sh\" [ -s \"$NVM_DIR/bash_completion\" ] && \. \"$NVM_DIR/bash_completion\">"

