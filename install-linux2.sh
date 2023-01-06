#!/bin/fish 
# This install script is for Ubuntu and its derivatives

curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install jethrokuan/z

echo "
=======================================================================================
Additonal notes: 
\n 1. If you are on WSL you can type 'code' to install vscode-server
\n 2. After install, make sure you set your default shell 
\n 3. Then reboot your shell to see reflected changes
\n 4. To finish install of nvim ensure you start nvim and run :PackerInstall and :MasonInstall eslint_d
=======================================================================================
"

