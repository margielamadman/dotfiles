# Setting Bash prompt. 
export PS1="\[$(tput bold)\]\[$(tput setaf 4)\][\[$(tput setaf 6)\]\u\[$(tput setaf 7)\]@\[$(tput setaf 6)\]\h \[$(tput setaf 7)\]\W\[$(tput setaf 4)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
      
# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

#	ADDITIONS
# some more ls aliases
# everything human readable
alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CFa'

# set vi mode
set -o vi
