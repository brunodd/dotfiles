# Simple setup

# configuring vim on new computer:

1. Clone my dotfiles repository to you home folder (other location will make script fail)

    ~~~sh
    cd
    git clone https://github.com/brunodd/dotfiles
    ~~~

2. If needed create a .vim/ directory in your home directory

    ~~~sh
    mkdir ~/.vim
    ~~~

3. clone vundle:

    ~~~sh
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    ~~~

4. link the basic\_vimrc to your own vimrc:

    ~~~sh
    ln -s dotfiles/vim/basic_vimrc ~/.vimrc
    ~~~~


5. launch vundle to install all plugins:

    ~~~sh
    vim +PluginInstall +qall
    ~~~
