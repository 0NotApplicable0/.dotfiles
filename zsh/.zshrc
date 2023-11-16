###################################
# Disable Insecure Dependencies   #
# (Change this to FALSE unless    #
# you have multiple users and     #
# are getting dependency issues!) #
###################################
ZSH_DISABLE_COMPFIX=true

#######################
# Initalize oh-my-zsh #
#######################
export ZSH=$HOME/.dotfiles/zsh/ohmyzsh

###################
# Theme Managment #
###################
ZSH_THEME="cdimascio-lambda"

###########################
# ZSH Config  AND EXPORTS #
###########################
export ZSH_CUSTOM="$HOME/.dotfiles/zsh/custom"

####################
# Plugin Managment #
####################
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

#######################
# Zcompdump managment #
#######################
#compinit -d ~/.dotfiles/zsh/.cache/.zcompdump
#ZSH_COMPDUMP=$HOME/.dotfiles/zsh/.cache/.zcompdump
#if [ -f ~/.zcompdump ]; then 
#	rm ~/.zcompdump
#fi

####################
# Custom Functions #
####################
function cd {
    builtin cd "$@" && ls -F
}
function mk() {
  mkdir -p "$@" && cd "$@"
}

##################
# Custom Aliases #
##################
alias l="ls -la"       # List in long format, include dotfiles
alias ld="ls -ld */"   # List in long format, only directories
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

export PATH=/Users/narnold/.local/bin:$PATH
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.jdk/Contents/Home
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion