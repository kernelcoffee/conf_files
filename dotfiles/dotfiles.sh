#!/bin/bash

dotfiles=(
    "bashrc"
    "gitconfig"
)

#FILE_PATH="`dirname \"$0\"`"
#CURRENT_DATE=`date +"%Y-%m-%d`

install() {
    for ((i = 0; i < ${#dotfiles[@]}; i++))
    do
	echo "'Processing " + ${dotfiles[$i]}
	rm -v ~/.${dotfiles[$i]}
	ln -vs `pwd`/${dotfiles[$i]} ~/.${dotfiles[$i]}
    done
}

#save() {
#    for ((i = 0; i < ${#dotfiles[@]}; i++))
#    do
#    done
#    git commit -m "Updating .files " + ${CURRENT_DATE}
#}

#test() {
#    echo ${FILE_PATH}
#}

case "$1" in 
    "install")
	install
	;;
    "save")
	save
	;;
    "*")
	echo 'missing command'
	;;
esac
