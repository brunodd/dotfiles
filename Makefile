
all: install

install:
		cp -rf .vim ../
		cp .vimrc ../
		cp .zshrc ../

update:
		cp ~/.vimrc .
		cp ~/.zshrc .
