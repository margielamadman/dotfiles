# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto --group-directories-first'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Setting Bash prompt. 
export PS1="\[$(tput bold)\]\[$(tput setaf 4)\][\[$(tput setaf 6)\]\u\[$(tput setaf 7)\]@\[$(tput setaf 6)\]\h \[$(tput setaf 7)\]\W\[$(tput setaf 4)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
      
# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

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

# autostart tmux
if [[ -z "$TMUX" ]]; then
	tmux
fi

# use powerline
#if [ -f `which powerline-daemon` ]; then
#	powerline-daemon -q
#	POWERLINE_BASH_CONTINUATION=1
#	POWERLINE_BASH_SELECT=1
#	. /usr/share/powerline/bindings/bash/powerline.sh
#fi
