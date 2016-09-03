#!/bin/zsh
# dots -> local

ln -s ~/dots/.vimrc ~/.vimrc
ln -s ~/dots/.zshrc ~/.zshrc
ln -s ~/dots/.zshrc ~/.zshenv

ln -s ~/dots/.vim ~/.vim

# mkdir -p ~/.vim/snippets/my
#ln -s ~/dots/snippets/ ~/.vim/snippets/my/

# NeoBundle
mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

mkdir -p ~/.vim/colors
ln -s ~/dots/colors/ ~/.vim/colors/

ln -s ~/dots/.tmux.conf ~/.tmux.conf

git config --global core.editor vim

ln -s ~/.latexmkrc ~/dots/latexmkrc
