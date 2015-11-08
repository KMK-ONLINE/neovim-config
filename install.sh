#!/usr/bin/env bash

export NEOVIM_REPO="https://github.com/KMK-ONLINE/neovim-config.git"
export NEOVIM_DIR="${HOME}/.config/nvim"
export VUNDLE_DIR="${NEOVIM_DIR}/bundle/Vundle.vim"
export VUNDLE_REPO="https://github.com/VundleVim/Vundle.vim"
export FONTS_DIR="${HOME}/.fonts"


# fix some flacky when on home
cd /tmp

# clean up
if [ -d $NEOVIM_DIR ]; then
  rm -rf $NEOVIM_DIR
fi

git clone $NEOVIM_REPO $NEOVIM_DIR;
git clone $VUNDLE_REPO $VUNDLE_DIR;


# Install bundle with vundle
nvim +PluginInstall +qall
echo "...Done."

echo "Install fonts for powerline"

if [ ! -d $FONTS_DIR ]; then
  mkdir $FONTS_DIR
fi

cp ${NEOVIM_DIR}/fonts/* $FONTS_DIR
fc-cache -fv
echo "...Done."
