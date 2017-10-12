
all: install

install:
		cp -rf .vim ../
		cp .vimrc ../
		cp .zshrc ../
		vim +PluginInstall +qall
		~/.vim/bundle/fonts/install.sh

update:
		cp ~/.vimrc .
		cp ~/.zshrc .
