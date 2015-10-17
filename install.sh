#!/usr/bin/env bash

export NEOVIM_REPO="https://github.com/KMK-ONLINE/neovim-config.git"
export NEOVIM_DIR="${HOME}/.neovim"
export VUNDLE_DIR="${NEOVIM_DIR}/bundle/Vundle.vim"
export VUNDLE_REPO="https://github.com/VundleVim/Vundle.vim"

# fix some flacky when on home
cd /tmp

# clean up
if [ -d $NEOVIM_DIR ]; then
  rm -rf $NEOVIM_DIR
fi

git clone $NEOVIM_REPO $NEOVIM_DIR;
git clone $VUNDLE_REPO $VUNDLE_DIR;

# create symlinks
ln -sf "${NEOVIM_DIR}/nvimrc" ~/.nvimrc

# Install bundle with vundle
nvim +PluginInstall +qall
