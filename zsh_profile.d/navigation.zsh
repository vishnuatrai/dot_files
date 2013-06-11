export CURRENT_PROJECT_PATH=$HOME/.current-project

setopt auto_cd
cdpath=($HOME/dev/vatrai $HOME/dev/gems $HOME/dev/personal)

function chpwd {
  echo $(pwd) >! $CURRENT_PROJECT_PATH
  ls -G --color=auto
}

current() {
  if [[ -f $CURRENT_PROJECT_PATH ]]; then
    cd "$(cat $CURRENT_PROJECT_PATH)"
  fi
}
