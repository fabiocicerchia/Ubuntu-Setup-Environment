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
# PRINT INFORMATIONS
################################################################################
echo "--------------------------------------------------------------------------------"
echo "UBUNTU SETUP ENVIRONMENT - BACKUP"
echo "Copyright (C) 2012 Fabio Cicerchia"
echo "License: MIT"
echo "--------------------------------------------------------------------------------"

################################################################################
# SETUP
################################################################################
BASEDIR=$PWD
HOMEDIR=$HOME
ENVDIR=$1
if [ "$ENVDIR" == "" ]; then
    echo "ERROR: Invalid environment directory"
    exit 1
fi
mkdir -p "$BASEDIR/$ENVDIR"

################################################################################
# DPKG
################################################################################
sudo dpkg --get-selections > "$BASEDIR/configurations/$ENVDIR/dpkg-package-selections.txt"

################################################################################
# SOURCES.LIST
################################################################################
cp "/etc/apt/sources.list" "$BASEDIR/configurations/$ENVDIR/sources.list"

################################################################################
# BASHRC
################################################################################
cp $HOMEDIR/.bashrc "$BASEDIR/configurations/$ENVDIR/.bashrc"

################################################################################
# MYSQL CONFIGURATION
################################################################################
cp "/etc/mysql/my.cnf" "$BASEDIR/configurations/$ENVDIR/my.cnf"

################################################################################
# PEAR
################################################################################
pear list-channels | grep "\." | sed -r "s/ .*//" > "$BASEDIR/configurations/$ENVDIR/pear.channels.txt"
pear list | egrep "[0-9]\." | sed -r "s/ .*//" > "$BASEDIR/configurations/$ENVDIR/pear.packages.txt"
