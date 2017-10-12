
all: install

install:
		cp -rf .vim ../
		git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
		cp .vimrc ../
		cp .zshrc ../
		vim +PluginInstall +qall
		~/.vim/bundle/fonts/install.sh

update:
		cp ~/.vimrc .
		cp ~/.zshrc .
