#!/bin/bash

sudo dpkg --set-selections < ./dpkg-package-selections.txt
sudo apt-get -u dselect-upgrade

git clone git://github.com/fabiocicerchia/VIM-Configs.git ~/VIM-Configs
ln -s ~/VIM-Config/.vim ~/.vim
ln -s ~/VIM-Config/.vimrc ~/.vimrc

firefox "https://addons.mozilla.org/firefox/downloads/latest/11950/platform:2/addon-11950-latest.xpi"
