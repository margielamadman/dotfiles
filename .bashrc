#Everything human readable
alias la="ls -alhF"
#Everything except hidden
alias ll='ls -l'
#Normal view
alias l='ls -CF'

#Useful
alias pubip="dig +short myip.opendns.com @resolver1.opendns.com"
alias pythonserver="python3 -m http.server"
alias gittree="git log --oneline --decorate --graph --all"
#alias tmux="tmux -2"

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export EDITOR=vim

