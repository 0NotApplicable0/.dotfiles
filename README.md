# NotApplicable's Dotfiles V1.0.1

# Install Notes

- Make sure you have git installed and configured so you can get this repository.:
- Before running `install.sh` you will need to `chmod +x install.sh`.
- Run `install.sh` with sudo to make sure it runs properly.
- After install, set FISH to your default shell.

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

# Installation Steps

## Scripts

1. Clone this repository
2. Run `chmod +x install.sh`
3. Run `install.sh`

   - Your system should be automatically detected and the
     correct install script will run.

## Manual review

Once the install scripts have finished most files will be installed.
Next steps are to install `fisher` a plugin manager for fish, `lua-language-server`
for use in neovim, `tree-sitter` for use in neovim, and then some
packer insatlls using `:PackerInstall`. See below...

### Fisher installation

Install fisher:

`curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher`

Install theme:

fisher install ilancosman/tide@v5

Install z plugin:

`fisher install jethrokuan/z`

### Neovim plugins installation

1. Open neovim with `nvim`
2. Enter normal mode, type: `:PackerInstall`
3. Enter normal node, type: `:MasonInstall eslint_d`

## lua-language-server && tree-sitter (Linux Only)

The MacOS install script automatically installs these dependencies
however on Linux we are unable to do this and require more steps.
Follow install instructions for [lua-language-server](https://github.com/sumneko/lua-language-server)
and [tree-sitter](https://github.com/tree-sitter/tree-sitter)
