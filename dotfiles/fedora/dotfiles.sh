#!/bin/bash



dotfiles=(
    "bashrc"
    "gitconfig"
)

install() {
    for ((i = 0; i < ${#dotfiles[@]}; i++))
    do
	echo "'Processing " + ${dotfiles[$i]}
	rm -v ~/.${dotfiles[$i]}
	ln -vs `pwd`/${dotfiles[$i]} ~/.${dotfiles[$i]}
    done
}

case "$1" in 
    "install")
	install
	;;
    "*")
	echo 'missing command'
	;;
esac
