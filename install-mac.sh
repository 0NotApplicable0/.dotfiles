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
brew install fish
brew install neovim

# Stow Config
stow .config