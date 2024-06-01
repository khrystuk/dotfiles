# Path to oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="refined"

plugins=(zsh-syntax-highlighting zsh-autosuggestions)

bindkey '^y' autosuggest-accept

source $ZSH/oh-my-zsh.sh

# nvm config
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# zoxide
eval "$(zoxide init --cmd cd zsh)"

# fzf
eval "$(fzf --zsh)"
