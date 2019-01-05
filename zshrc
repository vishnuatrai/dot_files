setopt correct

# Use Emacs keybinds
# bindkey -e

export REMOTE_GEM_CACHE_PATH=$HOME/.remote-gem-cache
export ZSH_HISTORY_PATH=$HOME/.zsh_history
export HOMEBREW_SEARCH_CACHE_PATH=$HOME/.homebrew-search-cache
#export GIT_CURL_VERBOSE=1  #to make git network calls verbose

# Oracle specific
#export DYLD_LIBRARY_PATH="/usr/local/oracle/instantclient_10_2"
#export SQLPATH="/usr/local/oracle/instantclient_10_2"
#export TNS_ADMIN="/usr/local/oracle/network/admin"
#export NLS_LANG="AMERICAN_AMERICA.UTF8"


#export PATH=$PATH:$DYLD_LIBRARY_PATH
#export PATH=$PATH:$HOME/bin

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


for zsh_source in $HOME/.zsh_profile.d/*.zsh; do
  source $zsh_source
done

source $HOME/.aliasrc
if [ -f "$HOME/.zsh.local" ]; then
  source ~/.zsh.local
fi

current

export PATH=/usr/local/bin:$PATH:$HOME/bin
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
PATH=$PATH:$HOME/.rvm/bin

export MAHOUT_DIR="/usr/local/Cellar/mahout/0.11.0/"

#[ -s "$HOME/.nvm/nvm.sh" ] && . "$HOME/.nvm/nvm.sh" # This loads nvm

export PYENV_ROOT=/usr/local/var/pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

eval "$(docker-machine env default 2>/dev/null)"
