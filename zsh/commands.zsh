alias open='xdg-open'
alias c='g++ -Wall -Wconversion -Wfatal-errors -g -std=c++14 -fsanitize=undefined,address'
new() {
	cd `_new $1 $2`
	vim $1.*
}
