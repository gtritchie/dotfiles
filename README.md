Setup commands
--------------

* ln -s ~/dotfiles/vim ~/.vim
* ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
* mkdir ~/.vimbackup
* mkdir ~/.vimswap
git config --global user.email "gary@rstudio.com"
git config --global user.name "Gary Ritchie"

VIM plugins
-----------

* git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
* vim +PluginInstall +qall

