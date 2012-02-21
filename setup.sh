#!/bin/bash

# DPKG
sudo dpkg --get-selections > /tmp/dpkg-package-selections.txt
diff -w dpkg-package-selections.txt /tmp/dpkg-package-selections.txt | grep "^<" | sed -r "s/^< //" | sed -r "s/install/deinstall/" >> /tmp/dpkg-package-selections.txt
sudo dpkg --set-selections < /tmp/dpkg-package-selections.txt

# APTITUDE
sudo apt-get -u dselect-upgrade
sudo apt-get autoremove
sudo apt-get autoclean
sudo apt-get clean

# PEAR
# TODO: ADD CLEANING LIST
for CHANNEL in `cat pear.channels.txt`;
do
    sudo pear channel-discover $CHANNEL;
done

sudo pear channel-update

for PACKAGE in `cat pear.packages.txt`;
do
    sudo pear install --alldeps $CHANNEL;
done

# VIM
git clone git://github.com/fabiocicerchia/VIM-Configs.git ~/VIM-Configs
ln -s ~/VIM-Config/.vim ~/.vim
ln -s ~/VIM-Config/.vimrc ~/.vimrc

# FIREFOX
firefox "https://addons.mozilla.org/en-US/firefox/collections/fabiocicerchia/use/"
