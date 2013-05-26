export REMOTE_GEM_CACHE_PATH=$HOME/.remote-gem-cache
export ZSH_HISTORY_PATH=$HOME/.zsh_history
export HOMEBREW_SEARCH_CACHE_PATH=$HOME/.homebrew-search-cache

# Oracle specific
#export DYLD_LIBRARY_PATH="/usr/local/oracle/instantclient_10_2"
#export SQLPATH="/usr/local/oracle/instantclient_10_2"
#export TNS_ADMIN="/usr/local/oracle/network/admin"
#export NLS_LANG="AMERICAN_AMERICA.UTF8"


#export PATH=$PATH:$DYLD_LIBRARY_PATH
#export PATH=$PATH:$HOME/bin

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

source $HOME/.aliasrc

for zsh_source in $HOME/.zsh_profile.d/*.zsh; do
  source $zsh_source
done

current

export PATH=/usr/local/bin:$PATH:$HOME/bin
