#! /bin/sh
#
# install.sh
# Copyright (C) 2020 kali <qingyun.oracle@gmail.com>
#
# Distributed under terms of the MIT license.
#


git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim<br />
git clone https://github.com/alvas/nvim.git ~/.config/nvim/<br />
nvim +PluginInstall +qall
