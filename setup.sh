#!/bin/bash
#
# UBUNTU SETUP ENVIRONMENT
#
# Copyright (C) 2012 Fabio Cicerchia
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

################################################################################
# BASHRC
################################################################################
cp ./configurations/.bashrc ~/.bashrc
. ~/.bashrc

################################################################################
# SOURCES.LIST
################################################################################
sudo cp ./configurations/sources.list /etc/apt/sources.list

################################################################################
# MYSQL CONFIGURATION
################################################################################
sudo cp ./configurations/my.cnf /etc/mysql/my.cnf

################################################################################
# DPKG
################################################################################
sudo dpkg --get-selections > /tmp/dpkg-package-selections.txt
diff -w ./configurations/dpkg-package-selections.txt /tmp/dpkg-package-selections.txt | grep "^<" | sed -r "s/^< //" | sed -r "s/install/deinstall/" >> /tmp/dpkg-package-selections.txt
sudo dpkg --set-selections < /tmp/dpkg-package-selections.txt

################################################################################
# UBUNTU TWEAK
################################################################################
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com FE85409EEAB40ECCB65740816AF0E1940624A220
sudo echo "deb http://ppa.launchpad.net/tualatrix/ppa/ubuntu karmic main" >> /etc/apt/sources.list
sudo echo "deb-src http://ppa.launchpad.net/tualatrix/ppa/ubuntu karmic main" >> /etc/apt/sources.list
sudo apt-get install ubuntu-tweak

################################################################################
# APTITUDE
################################################################################
sudo apt-get -u dselect-upgrade
sudo apt-get autoremove
sudo apt-get autoclean
sudo apt-get clean

################################################################################
# PEAR
################################################################################
for CHANNEL in `cat pear.channels.txt`;
do
    sudo pear channel-discover $CHANNEL;
done

sudo pear channel-update

for PACKAGE in `cat pear.packages.txt`;
do
    sudo pear install --alldeps $CHANNEL;
done

################################################################################
# VIM
################################################################################
git clone git://github.com/fabiocicerchia/VIM-Configs.git ~/VIM-Configs
ln -s ~/VIM-Configs/.vim ~/.vim
ln -s ~/VIM-Configs/.vimrc ~/.vimrc

################################################################################
# FIREFOX
################################################################################
firefox "https://addons.mozilla.org/en-US/firefox/collections/fabiocicerchia/use/"
