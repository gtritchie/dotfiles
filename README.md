Setup commands
--------------

```
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/bin ~/bin
ln -s ~/dotfiles/vim/ideavimrc ~/.ideavimrc
ln -s ~/dotfiles/git/gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
git config --global user.name "Gary Ritchie"
git config --global user.email "gary@rstudio.com" 
git config --global core.editor "vim"
mkdir ~/.vimbackup
mkdir ~/.vimswap
```

Mac-only
----------

* ln ~/dotfiles/bash/bash_profile_mac ~/.bash_profile
* brew install hg
* hg clone https://bitbucket.org/lukeworth/lldb-qt-formatters
* ln ~/dotfiles/lldb/.lldbinit .lldbinit

Linux-only
----------

* ln ~/dotfiles/bash/bash_aliases ~/.bash_aliases
* mkdir ~/.gdb
* cd ~/.gdb
* git clone git@github.com:Lekensteyn/qt5printers.git
* ln ~/dotfiles/gdb/.gdbinit ~/.gdbinit
* also grab gary-buildtools from rstudio 

VIM plugins
-----------

* git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
* vim +PluginInstall +qall

