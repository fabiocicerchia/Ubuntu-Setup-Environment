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
export BASEDIR=$PWD
export HOMEDIR=$HOME
export ENVDIR=$1
if [ "$ENVDIR" = "" ]; then
    echo "ERROR: Invalid environment directory"
    exit 1
fi
mkdir -p "$BASEDIR/configurations/$ENVDIR"

################################################################################
# RUN
################################################################################
sh "$BASEDIR/modules/dpkg/backup.sh"
sh "$BASEDIR/modules/sources-list/backup.sh"
sh "$BASEDIR/modules/bashrc/backup.sh"
sh "$BASEDIR/modules/mysql/backup.sh"
sh "$BASEDIR/modules/pear/backup.sh"

################################################################################
# DONE
################################################################################
echo "DONE"
