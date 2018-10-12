Setup commands
--------------

* ln -s ~/dotfiles/vim ~/.vim
* ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
* ln -s ~/dotfiles/bin ~/bin
* mkdir ~/.vimbackup
* mkdir ~/.vimswap
* git config --global user.email "gary@rstudio.com"
* git config --global user.name "Gary Ritchie"

Mac-only
----------

* ln ~/dotfiles/bash/bash_profile_mac ~/.bash_profile
* brew install hg
* hg clone https://bitbucket.org/lukeworth/lldb-qt-formatters
* ln ~/dotfiles/lldb/.lldbinit .lldbinit

Linux-only
----------

* ln ~/dotfiles/bash/bashrc_linux ~/.bashrc
* mkdir ~/.gdb
* cd ~/.gdb
* git clone https://github.com/Lekensteyn/qt5printers
* ln ~/dotfiles/gdb/gdbinit ~/.gdbinit

VIM plugins
-----------

* git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
* vim +PluginInstall +qall

