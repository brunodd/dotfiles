#!/bin/bash
if [[ -e ~/.vimrc ]]
then
	echo "~/.vimrc exists. It was ignored."
else
	ln -s ~/dotfiles/.vimrc ~/.vimrc
fi

if [[ -e ~/.vim/ftplugin/ ]]
then
	echo "~/.vim/ftplugin/ exists. It was ignored."
else
	ln -s ~/dotfiles/ftplugin ~/.vim/ftplugin
fi

if [[ -e ~/.vim/colors/ ]]
then
	echo "~/.vim/colors exists. It was ignored."
else
	ln -s ~/dotfiles/colors ~/.vim/colors
fi
if [[ -e ~/.bash_profile ]]
then
	echo "~/.bash_profile exists. It was ignored."
else
	ln -s ~/dotfiles/.bash_profile ~/.bash_profile
fi
