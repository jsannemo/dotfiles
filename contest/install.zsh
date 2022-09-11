# Programming contests
if [[ want_home ]] {
    mkdir -p $HOME/Code/contest
    if [[ ! -d $HOME/Code/contest/kactl ]] {
        git clone git@github.com:kth-competitive-programming/kactl $HOME/Code/contest/kactl
    }
    if [[ ! -d $HOME/Code/contest/testdata_tools ]] {
        git clone git@github.com:nordicolympiad/testdata_tools $HOME/Code/contest/testdata_tools
    }
    if [[ ! -d $HOME/Code/contest/contest_tools ]] {
        git clone git@github.com:jsannemo/contest_tools $HOME/Code/contest/contest_tools
    }
    if [[ ! -d $HOME/Code/contest/solutions ]] {
        git clone git@github.com:jsannemo/progcontest_area $HOME/Code/contest/solutions
    }
    if [[ ! -d $HOME/Code/contest/pop-book ]] {
        git clone git@github.com:jsannemo/pop-book $HOME/Code/contest/pop-book
    }
    if [[ ! -d $HOME/Code/contest/pofaps-problems ]] {
        git clone git@github.com:jsannemo/pofaps-problems $HOME/Code/contest/pofaps-problems
    }

    sudo apt install automake g++ make libboost-regex-dev libgmp-dev libgmp10 libgmpxx4ldbl python3 python3-pytest python3-setuptools python3-yaml python3-plastex debhelper dh-python dpkg-dev


    sudo apt install ghostscript libgmpxx4ldbl python3-minimal python-pkg-resources texlive-fonts-recommended texlive-lang-cyrillic texlive-latex-extra texlive-plain-generic tidy

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
