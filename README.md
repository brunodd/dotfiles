# Simple setup

# configuring vim on new computer:

1. Clone my dotfiles repository to you home folder (other location will make script fail)

    ~~~sh
    $ cd
    $ git clone gttps://github.com/brunodd/dotfiles
    ~~~

2. Add colorschemes manually (vundle fails for some reason):

    ~~~sh
    $ mkdir ~/.vim
    $ git clone https://github.com/flazz/vim-colorschemes ~/.vim
    ~~~

3. clone vundle:

    ~~~sh
    $ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    ~~~

4. create symlinks + copy files by running "create_symlink.sh" script. If none
   exists, you get a free .bash_profile as a bonus.

    ~~~sh
    $ cd dotfiles/
    $ ./create_symlinks.sh
    ~~~

4. launch vundle to install all plugins:

    ~~~sh
    $ vim +PluginInstall +qall
    ~~~
