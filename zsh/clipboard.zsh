# clipcopy - Copy data to clipboard
#
# Usage:
#
#  <command> | clipcopy    - copies stdin to clipboard
#
#  clipcopy <file>         - copies a file's contents to clipboard
#
function clipcopy() {
  emulate -L zsh
  local file=$1
  if [[ -z $file ]]; then
	xclip -in -selection clipboard
  else
	xclip -in -selection clipboard $file
  fi
}

# clippaste - "Paste" data from clipboard to stdout
#
# Usage:
#
#   clippaste   - writes clipboard's contents to stdout
#
#   clippaste | <command>    - pastes contents and pipes it to another process
#
#   clippaste > <file>      - paste contents to a file
#
# Examples:
#
#   # Pipe to another process
#   clippaste | grep foo
#
#   # Paste to a file
#   clippaste > file.txt
function clippaste() {
  emulate -L zsh
  xclip -out -selection clipboard
}
