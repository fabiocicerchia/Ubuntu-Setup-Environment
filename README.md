# UBUNTU SETUP ENVIRONMENT

---

## INSTALLATION
 * Make a fork of `https://github.com/fabiocicerchia/Ubuntu-Setup-Environment`
 * `sudo apt-get install git`
 * `git clone git://github.com/<your-username>/Ubuntu-Setup-Environment.git`

---

## BACKUP DATA
 * `cd Ubuntu-Setup-Environment`
 * `./backup.sh <ENV>`
 * `git add configurations`
 * `git commit -m "changed configuration" configurations`
 * `git push origin`

**NOTE:** The `<ENV>` is a dedicated directory where save the configuration files.  
You can create multiple configuration (eg: home, work, etc).

---

## RESTORE DATA
 * `cd Ubuntu-Setup-Environment`
 * `./restore.sh <ENV>`

**NOTE:** The `<ENV>` is a dedicated directory where load the configuration files.  
You can use multiple configuration (eg: home, work, etc).

---

## LICENSE
Copyright (C) 2012-2013 Fabio Cicerchia

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
