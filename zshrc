# zsh profile
# matt rozak

# oh my zsh
export ZSH="/Users/matt/.oh-my-zsh" # Path to your oh-my-zsh installation.
ZSH_THEME="robbyrussell"
COMPLETION_WAITING_DOTS="true"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# ls
alias l='ls'
alias ls='ls -GF'
alias ll='ls -lh'
alias la='ls -a'
alias lla='ls -lha'

# cd
alias cd..="cd .."
alias cd...="cd ../.."
alias cd....="cd ../../.."
alias cd.....="cd ../../../.."
alias cd......="cd ../../../../.."

alias v="vim"

# source .local_aliases
if [ -f ~/.local_aliases ]; then
   source ~/.local_aliases
fi
