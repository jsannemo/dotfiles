# Programming contests
if [[ want_home ]] {
    mkdir -p $HOME/Code/contest
    if [[ ! -d $HOME/Code/contest/kactl ]] {
        git clone git@github.com:kth-competitive-programming/kactl $HOME/Code/contest/kactl
    }
    if [[ ! -d $HOME/Code/contest/testdata_tools ]] {
        git clone git@github.com:jsannemo/testdata_tools $HOME/Code/contest/testdata_tools
    }
    if [[ ! -d $HOME/Code/contest/contest_tools ]] {
        git clone git@github.com:jsannemo/contest_tools $HOME/Code/contest/contest_tools
    }
    if [[ ! -d $HOME/Code/contest/solutions ]] {
        git clone git@github.com:jsannemo/progcontest_area $HOME/Code/contest/solutions
    }
    if [[ ! -d $HOME/Code/contest/proposals ]] {
        git clone git@github.com:jsannemo/problem_proposals $HOME/Code/contest/proposals
    }
    sudo apt-get install libboost-regex1.58.0 libc6 libgcc1 libgmp10 libgmpxx4ldbl libstdc++6 python2.7 python-yaml python-plastex texlive-lang-cyrillic tidy debhelper g++ dh-python python-setuptools python-pytest python-yaml libboost-regex-dev libgmp3-dev automake autoconf
    if cd $HOME/Code/contest/problemtools
    then
        git pull origin
    else
        git clone git@github.com:kattis/problemtools $HOME/Code/contest/problemtools
    fi
    cd $HOME/Code/contest/problemtools && make builddeb
    sudo dpkg -i $HOME/Code/contest/kattis-problemtools_*.deb
    rm -f $HOME/Code/contest/kattis-problemtools_*
}
