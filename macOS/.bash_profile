[[ -s ~/.bashrc ]] && source ~/.bashrc

# set GITAWAREPROMPT
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

export PATH=/usr/local/bin:/usr/local/sbin:$PATH
