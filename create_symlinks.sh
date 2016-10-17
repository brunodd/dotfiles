#!/bin/bash
if [[ -e ~/.vimrc ]]
then
	echo "~/.vimrc exists. It was ignored."
else
	ln -s ~/dotfiles/.vimrc ~/.vimrc
fi

if [[ -e ~/.vim/ ]]
then
	echo "~/.vim exists. It was ignored."
else
	ln -s ~/dotfiles/.vim ~/.vim
fi
if [[ -e ~/.bash_profile ]]
then
	echo "~/.bash_profile exists. It was ignored."
else
	ln -s ~/dotfiles/.bash_profile ~/.bash_profile
fi
if [[ -e ~/.zshrc ]]
then
	echo "~/.zshrc exists. It was ignored."
else
	ln -s ~/dotfiles/.zshrc ~/.zshrc
fi
