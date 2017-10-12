
all: install

install:
		cp -rf .vim ../
		cp .vimrc ../
		cp .zshrc ../
		mkdir ~/.vim/swap
		mkdir ~/.vim/backup
		vim +PluginInstall +qall
		~/.vim/bundle/fonts/install.sh

update:
		cp ~/.vimrc .
		cp ~/.zshrc .
