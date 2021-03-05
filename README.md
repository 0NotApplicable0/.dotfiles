# NotApplicable's Dotfiles

## Before cloning:
- Make sure you have git installed and configured

## A few notes:
- Before running `install.sh` you will need to `chmod +x install.sh`.
- Run `install.sh` with sudo to make sure it runs properly.
- WSL Users, to make git hook into your parent system use this process: https://craigloewen-msft.github.io/WSLTipsAndTricks/tip/git-credentials.html and https://blog.anaisbetts.org/using-github-credentials-in-wsl2/
- When cloning the repository make sure to run `git clone --recurse-submodules -j8 https://github.com/0NotApplicable0/.dotfiles.git`. Do not forget the `--recurse-submodules -j8` as the repository has submodules linked to 
_oh-my-zsh_ and a few other things. 
- After install, set ZSH to your default shell with `chsh -s $(which zsh)`

## Overview:
    This installs ZSH and stow. Currently it only works on linux but I have plans to have it work on Mac as well. 