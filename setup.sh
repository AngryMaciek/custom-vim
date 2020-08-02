#!/usr/bin/env bash

###############################################################################
#
#   Setup script for the Vim configuration
#
#   AUTHOR: Maciej_Bak
#   AFFILIATION: Swiss_Institute_of_Bioinformatics
#   CONTACT: wsciekly.maciek@gmail.com
#   CREATED: 13-07-2020
#   LICENSE: MIT
#
###############################################################################

cd $HOME

# backup current vim config file
mv .vimrc .vimrc-backup

# link the new dotfile
ln -s $HOME/angry-vim/vimrc .vimrc

# set monokai color theme
mkdir -p .vim/colors
ln -s $HOME/angry-vim/vim-monokai-master/colors/monokai.vim .vim/colors/monokai.vim

# install vim-airline
git clone https://github.com/AngryMaciek/vim-airline .vim/pack/packages/start/vim-airline
