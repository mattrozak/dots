# .zshrc
# matt rozak

# 1. zshenv
# 2. zprofile (if login)
# 3. zshrc (if interactive)
# 4. zlogin (if login)


# if it is needed by a command run non-interactively: .zshenv
# if it should be updated on each new shell: .zshenv
# if it runs a command which may take some time to complete: .zprofile
# if it is related to interactive usage: .zshrc
# if it is a command to be run when the shell is fully setup: .zlogin
# if it releases a resource acquired at login: .zlogout




# oh my zsh
export ZSH=~/.oh-my-zsh # Path to your oh-my-zsh installation.
ZSH_THEME="robbyrussell"
#ZSH_THEME="tjkirch"

COMPLETION_WAITING_DOTS="true"
plugins=(
    git
    vi-mode
    zsh-syntax-highlighting
    zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh

# ls
alias l='ls -F'
alias ll='ls -lhF'
alias la='ls -aF'
alias lla='ls -lhFa'

# cd
alias cd..="cd .."
alias cd...="cd ../.."
alias cd....="cd ../../.."
alias cd.....="cd ../../../.."
alias cd......="cd ../../../../.."

# print dir history one line numbered
alias dirs="dirs -v"

export HISTCONTROL=ignorespace:ignoredups
export HISTTIMEFORMAT="%F %T "


# source .local_aliases
if [ -f ~/.local_aliases ]; then
   source ~/.local_aliases
fi

bindkey -v

# notes:
# - ensure autopushd is on
