# Setting Bash prompt. 
export PS1='\[$txtblu\][\[$txtcyn\]\u\[$txtwht\]@\[$txtwht\]\[$txtcyn\]\h\[$txtwht\] \W\[$txtblu\]] \[$txtpur\]$git_branch\[$txtred\]$git_dirty \[$txtwht\]\$ \[$txtrst\]'
      
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
