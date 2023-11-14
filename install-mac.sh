# Sudo Check
if [ $EUID -ne 1 ]; then
   echo "Please do not run this script as root!" 
   exit 1
fi

# Install Package Manager (BREW)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(homebrew/bin/brew shellenv)"

# Install Packages
brew install stow
brew install peco
brew install neovim

# ZSH SETUP
brew install zsh
cp zsh/custom/resources/lambda-zsh-theme/cdimascio-lambda.zsh-theme zsh/custom/themes/cdimascio-lambda.zsh-theme
cp zsh/custom/resources/spaceship-prompt/spaceship.zsh-theme zsh/custom/themes/spaceship.zsh-theme

# FISH SETUP
brew install fish

# Stow Config
stow .config