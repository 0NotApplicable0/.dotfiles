# NotApplicable's Dotfiles V0.0.0

# Install Notes

Use these dotfiles at your own risk! Some manual tweaking and
configuration may be required.

When you are installing, make sure you clone the submodules as well.
You can do this with:

`git clone --recurse-submodules -j8 https://github.com/0NotApplicable0/.dotfiles.git`

- Make sure you have git installed and configured so you can get this repository.:
- Before running `install.sh` you will need to `chmod +x install.sh`.
- Run `install.sh` with sudo to make sure it runs properly.
- My dotfiles contains configuration files for both FISH and ZSH as I actually use both.
- After install, set your prefered default shell.

# Overview

This repository contains all the basic configuration that I use
for my different environments.

Currently Include:

- Mac
- Linux (Ubunutu)

Plans For:

- Windows

All configuration files are present but install scripts are not all
100% automatic. Some installation will review manual review which will
be detailed below.

## Tools Installed + Configurations

- neovim
- fish
- C++/C Build Tools
- Nerd Hack Font
- peco
- exa
- z
- nvm & node
- zsh

# Installation Steps

## Scripts

1. Clone this repository
2. Run `chmod +x install.sh`
3. Run `install.sh`

   - Your system should be automatically detected and the
     correct install script will run.

## Manual review

Certain installs cannot be automated in the script and will require user
intervention. See below for those instructions.

### Fish addons installation

#### Install fisher:

`curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher`

#### Install theme:

`fisher install ilancosman/tide@v5`

#### Install exa plugin:

See installation [instructions](https://the.exa.website/install/linux).

#### Install z plugin:

`fisher install jethrokuan/z`

### NVM and Node installation

#### Run the below commands:

`wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash`

`export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"`

`nvm install node`

### Neovim Packer + Plugins installation

#### Install Packer:

`git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim`

Install Node Plugins:

```
npm install -g typescript-language-server typescript
npm install -g @fsouza/prettierd
```

Setup Plugins:

1. Open neovim with `nvim`
2. Enter normal mode, type: `:PackerInstall`
3. Enter normal node, type: `:MasonInstall eslint_d`

#### lua-language-server && tree-sitter (Linux Only)

The MacOS install script automatically installs these dependencies
however on Linux we are unable to do this and require more steps.
Follow install instructions for [lua-language-server](https://github.com/sumneko/lua-language-server)
and [tree-sitter](https://github.com/tree-sitter/tree-sitter)

### Lunarvim

`LV_BRANCH='release-1.2/neovim-0.8' bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)`

For specific language installs see [docs](https://www.lunarvim.org/)

## Other Recommended Installs

- [gitui](https://github.com/extrawurst/gitui)
- [robostack ros](https://robostack.github.io/)
