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
# UBUNTU TWEAK
################################################################################
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com FE85409EEAB40ECCB65740816AF0E1940624A220
sudo sh -c 'CODENAME=`lsb_release -a 2>&1 | grep "Codename" | sed -r "s/.*\t//"`; echo "deb http://ppa.launchpad.net/tualatrix/ppa/ubuntu $CODENAME main" >> "/etc/apt/sources.list"'
sudo sh -c 'CODENAME=`lsb_release -a 2>&1 | grep "Codename" | sed -r "s/.*\t//"`; echo "deb-src http://ppa.launchpad.net/tualatrix/ppa/ubuntu $CODENAME main" >> "/etc/apt/sources.list"'
sudo apt-get update
sudo apt-get install ubuntu-tweak