#! /bin/bash

set -e

apt-get install vim vim-gtk

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp vimrc ~/.vimrc
mkdir -p ~/.vim/colors/
mkdir -p ~/.vim/syntax/

cp python.vim  ~/.vim/syntax/
cp go.vim ~/.vim/syntax/
cp -r ansible-vim-1.0/ftdetect ~/.vim/
cp -r ansible-vim-1.0/ftplugin ~/.vim/
cp -r ansible-vim-1.0/syntax  ~/.vim/
cp txt.vim ~/.vim/syntax/
cp bsh.vim ~/.vim/syntax/


vim +PluginInstall +qall
