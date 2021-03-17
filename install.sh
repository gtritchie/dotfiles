#!/usr/bin/env bash

set -e

source "$(dirname "${BASH_SOURCE[0]}")/rstudio-tools.sh"

section "Common config"

if [ ! -e ~/.vim ]; then
  ln -s ~/dotfiles/vim ~/.vim
fi
if [ ! -e ~/.tmux.conf ]; then
  ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
fi
if [ ! -e ~/bin ]; then
  ln -s ~/dotfiles/bin ~/bin
fi
if [ ! -e ~/.ideavimrc ]; then
  ln -s ~/dotfiles/vim/ideavimrc ~/.ideavimrc
fi
if [ ! -e ~/.oh-my-zsh/custom/aliases.zsh ]; then
  ln -s ~/dotfiles/zsh/aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh
fi
if [ ! -e ~/.gitignore_global ]; then
  ln -s ~/dotfiles/git/gitignore_global ~/.gitignore_global
fi
if [ ! -d ~/.vimbackup ]; then
  mkdir ~/.vimbackup
fi
if [ ! -d ~/.vimswap ]; then
  mkdir ~/.vimswap
fi

git config --global core.excludesfile ~/.gitignore_global
git config --global user.name "Gary Ritchie"
git config --global user.email "gary@rstudio.com" 
git config --global core.editor "vim"

if is-macos; then
  section "macOS-only config"
  if [ ! -e ~/.bash_profile ]; then
    ln ~/dotfiles/bash/bash_profile_mac ~/.bash_profile
  fi
else
  section "Linux-only config..."
  if [ ! -e ~/.bash_aliases ]; then
    ln ~/dotfiles/bash/bash_aliases ~/.bash_aliases
  fi
  # chsh -s $(which zsh)
  # mkdir ~/.gdb
  # cd ~/.gdb
  # git clone git@github.com:Lekensteyn/qt5printers.git
  # ln ~/dotfiles/gdb/.gdbinit ~/.gdbinit
fi

section "Done!"

