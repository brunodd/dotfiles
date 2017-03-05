#!/bin/bash
if [[ -e ~/.vimrc ]]
then
	echo "~/.vimrc exists. It was ignored."
else
	ln -s ~/dotfiles/.vimrc ~/.vimrc
fi

if [[ -e ~/.zshrc ]]
then
	echo "~/.zshrc exists. It was ignored."
else
	ln -s ~/dotfiles/.zshrc ~/.zshrc
fi
