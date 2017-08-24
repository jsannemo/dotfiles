bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Emacs Ctrl+W does not consider | to be a word, but vi does
bindkey '^W' vi-backward-kill-word
