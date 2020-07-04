# Path to oh-my-zsh installation.
export ZSH=/Users/yurakhr/.oh-my-zsh

ZSH_THEME=""

plugins=(zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration
autoload -U promptinit; promptinit
prompt pure

# nvm config
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# GPG
export GPG_TTY=$(tty)