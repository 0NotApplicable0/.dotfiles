# Helper Functions Setup #
brew_install() {
    echo "\nInstalling $1"
    if brew list $1 &>/dev/null; then
        echo "${1} is already installed"
    else
        brew install $1 && echo "$1 is installed"
    fi
}
##########################

# Sudo Check
if [ $EUID -ne 1 ]; then
   echo "Please do not run this script as root!" 
   exit 1
fi

# Install Package Manager (BREW)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(homebrew/bin/brew shellenv)"

# Install Packages
brew_install install stow
brew_install install peco
brew_install install neovim

# NVM SETUP
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

# ZSH SETUP
brew_install install zsh
cp zsh/custom/resources/lambda-zsh-theme/cdimascio-lambda.zsh-theme zsh/custom/themes/cdimascio-lambda.zsh-theme
cp zsh/custom/resources/spaceship-prompt/spaceship.zsh-theme zsh/custom/themes/spaceship.zsh-theme

# FISH SETUP
brew_install install fish

# Stow Configurations
stow .config
stow zsh

# After Install
echo "After install steps:"
echo " - Add 'nvm' to PATH if its not automatically added with <export NVM_DIR=\"$HOME/.nvm\" [ -s \"$NVM_DIR/nvm.sh\" ] && \. \"$NVM_DIR/nvm.sh\" [ -s \"$NVM_DIR/bash_completion\" ] && \. \"$NVM_DIR/bash_completion\">"

