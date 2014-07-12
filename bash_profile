# bash profile
# matt rozak

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
