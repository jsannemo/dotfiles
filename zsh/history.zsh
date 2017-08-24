HISTSIZE=10000
SAVEHIST=10000
HISTFILE=$HOME/.zsh_history

alias hist='fc -d -t"%d-%m-%Y" -l 1'

setopt histignorealldups
setopt sharehistory
setopt extended_history
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
