# NotApplicable's Dotfiles V0.0.0

# Install Notes

Use these dotfiles at your own risk! Some manual tweaking and
configuration may be required.

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

## Tools Installed + Configurations

### neovim

- [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim) - A plugin manager for Neovim
- [svrana/neosolarized.nvim](https://github.com/svrana/neosolarized.nvim) - A truecolor, solarized dark colorscheme
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) - A blazing fast and easy to configure Neovim statusline written in Lua
- [onsails/lspkind-nvim](https://github.com/onsails/lspkind-nvim) - VSCode-like pictograms
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip) - Snippet Engine for Neovim written in Lua
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) - nvim-cmp source for neovim's built-in LSP
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer) - nvim-cmp source for buffer words
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - A completion engine plugin for neovim written in Lua
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - A collection of configurations for Neovim's built-in LSP
- [jose-elias-alvarez/null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim) - Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua.
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim) - Portable package manager for Neovim that runs everywhere Neovim runs. Easily install and manage LSP servers, DAP servers, linters, and formatters
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) - Extension to mason.nvim that makes it easier to use lspconfig with mason.nvim
- [glepnir/lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim) - A light-weight lsp plugin based on neovim's built-in lsp with a highly performant UI
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - [Treesitter](https://github.com/tree-sitter/tree-sitter) configurations and abstraction layer for Neovim
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons) - Lua `fork` of vim-web-devicons for neovim
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - A highly extendable fuzzy finder over lists
- [nvim-telescope/telescope-file-browser.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim) - File Browser extension for telescope.nvim
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs) - Autopairs
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) - Use treesitter to auto close and auto rename html tag
- [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua) - A high-performance color highlighter
- [akinsho/nvim-bufferline.lua](https://github.com/akinsho/nvim-bufferline.lua) - A snazzy bufferline
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) - Git integration for buffers
- [dinhhuy258/git.nvim](https://github.com/dinhhuy258/git.nvim) - A simple clone of the plugin vim-fugitive
- [folke/zen-mode.nvim](https://github.com/folke/zen-mode.nvim) - Distraction-free mode
- [iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) - Markdown live preview

### fish

- [Fish shell](https://fishshell.com/)
- [Fisher](https://github.com/jorgebucaran/fisher) - Plugin manager
- [Tide](https://github.com/IlanCosman/tide) - Shell theme. Use version 5: `fisher install ilancosman/tide@v5`
- [Nerd fonts](https://github.com/ryanoasis/nerd-fonts) - Powerline-patched fonts. I use Hack.
- [z for fish](https://github.com/jethrokuan/z) - Directory jumping
- [Exa](https://the.exa.website/) - `ls` replacement
- [ghq](https://github.com/x-motemen/ghq) - Local Git repository organizer
- [peco](https://github.com/peco/peco) - Interactive filtering

### Other Tools

- C++/C Build Tools
- Nerd Hack Font
- peco
- exa
- z
- nvm & node
- zsh
- Lunarvim

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

`
export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
`

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
