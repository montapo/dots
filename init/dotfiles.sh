#!/bin/bash

# dots -> local

#while getopts b:n:z:l: --- requires option argument $OPTARG
while getopts bznl OPT
do
    case $OPT in
        b)  FLAG_BACKUP="TRUE" ;;
        z)  FLAG_ZSH_INIT="TRUE" ;;
        n)  FLAG_NEOBUNDLE_INIT="TRUE" ;;
        l)  FLAG_SYMLINK="TRUE" ;;
        ?)  printf "usage: %s: [-b backup] [-z clone .zsh.d] [-n NeoBundle seutup] [-l creates symbolic link]\n" $0
            exit 2;;
    esac
done

if [ "$FLAG_ZSH_INIT" = "TRUE" ]; then
    echo "init - cloning zsh.d and NeoBundle...."
    git clone https://github.com/clear-code/zsh.d.git ~/.zsh.d
    echo "source ~/.zsh.d/zshrc" > ~/.zshrc
    echo "source ~/.zsh.d/zshenv" > ~/.zshenv
fi
if [ "$FLAG_NEOBUNDLE_INIT" = "TRUE" ]; then
    mkdir -p ~/.vim/bundle
    git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
    git clone https://github.com/Shougo/vimproc ~/.vim/bundle/vimproc
fi
if [ "$FLAG_BACKUP" = "TRUE" ]; then
    mv ~/.vimrc ~/dots/backup
    mv ~/.zshrc ~/dots/backup
    mv ~/.zshenv ~/dots/backup
fi

if [ "$FLAG_SYMLINK" = "TRUE" ]; then
    ln -s ~/dots/.vimrc ~/.vimrc
    ln -s ~/dots/.zshrc ~/.zshrc
    ln -s ~/dots/.zsenv ~/.zshenv
fi
