#!/bin/bash
if [[ ! -e ~/.vimrc ]]
then
	ln -s ~/dotfiles/.vimrc ~/.vimrc
fi

if [[ ! -e ~/.vim/ftplugin/ ]]
then
	ln -s ~/dotfiles/ftplugin ~/.vim/ftplugin
fi

if [[ ! -e ~/.vim/colors/ ]]
then
	ln -s ~/dotfiles/colors ~/.vim/colors
fi
