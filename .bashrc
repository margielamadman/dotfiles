#Everything human readable
alias ll='ls -alhF'
#Normal view
alias l='ls -CFa'

#Useful
alias pubip="dig +short myip.opendns.com @resolver1.opendns.com"
alias pythonserver="python3 -m http.server"
alias gittree="git log --oneline --decorate --graph --all"

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export EDITOR=vim

#set vi mode
set -o vi
