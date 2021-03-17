#!/usr/bin/env bash

set -e

PLATFORM=$(uname)

echo "Common settings..."
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/bin ~/bin
ln -s ~/dotfiles/vim/ideavimrc ~/.ideavimrc
ln -s ~/dotfiles/zsh/aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh
ln -s ~/dotfiles/git/gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
git config --global user.name "Gary Ritchie"
git config --global user.email "gary@rstudio.com" 
git config --global core.editor "vim"
mkdir ~/.vimbackup
mkdir ~/.vimswap

if [ "${PLATFORM}" = "Darwin" ]; then
  echo "macOS settings..."
  ln ~/dotfiles/bash/bash_profile_mac ~/.bash_profile
else
  echo "Linux-only settings..."
  ln ~/dotfiles/bash/bash_aliases ~/.bash_aliases
  chsh -s $(which zsh)
  # mkdir ~/.gdb
  # cd ~/.gdb
  # git clone git@github.com:Lekensteyn/qt5printers.git
  # ln ~/dotfiles/gdb/.gdbinit ~/.gdbinit
fi

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

echo Done
