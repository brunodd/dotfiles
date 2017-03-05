# Simple setup

# configuring vim on new computer:

1. Clone my dotfiles repository to you home folder

    ~~~sh
    git clone https://github.com/brunodd/dotfiles ~/dotfiles
    ~~~

2. If needed create a .vim/ directory in your home directory

    ~~~sh
    mkdir ~/.vim
    ~~~

3. Clone vundle:

    ~~~sh
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    ~~~

4. Link the basic\_vimrc to your own vimrc:

    ~~~sh
    ln -s dotfiles/vim/basic_vimrc ~/.vimrc
    ~~~~


5. Launch vundle to install all plugins:

    ~~~sh
    vim +PluginInstall +qall
    ~~~
