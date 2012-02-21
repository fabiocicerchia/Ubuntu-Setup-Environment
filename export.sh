#!/bin/bash

# DPKG
sudo dpkg --get-selections > ./dpkg-package-selections.txt

# PEAR
pear list-channels | grep "\." | sed -r "s/ .*//" > pear.channels.txt
pear list | egrep "[0-9]\." | sed -r "s/ .*//" > pear.packages.txt
