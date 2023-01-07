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
export ZSH=$HOME/.oh-my-zsh

###################
# Theme Managment #
###################
ZSH_THEME="cdimascio-lambda"

###########################
# ZSH Config  AND EXPORTS #
###########################
#export HISTFILE="$HOME/.dotfiles/zsh/.cache/.zsh_history"
#export ZSH_COMPDUMP="$HOME/.dotfiles/zsh/.cache/.zcompdump-${SHORT_HOST}-${ZSH_VERSION}"
#export ZSH_CACHE_DIR="$HOME/.dotfiles/zsh/.cache/"
export ZSH_CUSTOM="$HOME/Projects/Repositories/.dotfiles/zsh/custom"

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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniforge/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
