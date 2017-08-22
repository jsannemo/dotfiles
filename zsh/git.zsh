# git settings
git_branch() {
      (command git symbolic-ref -q HEAD || command git name-rev --name-only --no-undefined --always HEAD) 2>/dev/null
}

alias g="git"
alias ga="git add"
alias gall="git add --all"
alias gc="git commit -v"
alias gco="git checkout"
alias gl="git log"
alias gdo="git pull -r origin"
alias guo="git push origin"
alias gs="git status"
