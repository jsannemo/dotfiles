# cd settings
alias ..="cd .."
alias ....="cd ...."
alias ......="cd ......"

# cp settings
alias cp="cp -i" # -i asks us before overwriting a file

# grep settings
GREP_EXCLUDE_DIR="{.git}"
GREP_FLAGS="--color=auto --exclude-dir=${GREP_EXCLUDE_DIR}"
alias grep="grep ${GREP_FLAGS}"

# ls settings
alias ls="ls --color=auto"

# mv settings
alias mv="mv -i" # -i asks us before overwriting a file

# rm settings
alias rm="rm -i" # -i asks us before removing any file
