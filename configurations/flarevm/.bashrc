# ~/.bashrc: executed by bash(1) for non-login shells.

export PS1="\h:\w\$ "
export EDITOR=/usr/bin/vim
export SONAR_RUNNER_HOME=/var/www/domains/dev.remote/sonar-runner
export PATH=$PATH:${SONAR_RUNNER_HOME}/bin:/root/bin
umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'

alias apache_errors='ls -lah /var/log/apache2 | grep error | grep -v gz | sed -r "s/.* 201/201/" | sort -r'

# Some more alias to avoid making mistakes:
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

#mysqlcheck --all-databases --check -u root -p && mysqlcheck --all-databases --analyze -u root -p && mysqlcheck --all-databases --repair -u root -p && mysqlcheck --all-databases --optimize -u root -p
###################################
# INFOS
###################################
#echo ""
#echo "----------------------------------------------------------------------------------"
#echo ""

#APACHE_ERRORS=`apache_errors | wc -l`
#echo "YOU HAVE $APACHE_ERRORS APACHE ERRORS."

#MYSQL_SLOW=`cat /var/log/mysql/mysql-slow.log | grep -i ^select | sort | uniq | wc -l`
#echo "YOU HAVE $MYSQL_SLOW SLOW QUERIES."

#UPT=`uptime | sed -r "s/  / /g"`
#echo "UPTIME:$UPT"

#USED=`df | grep "/$" | sed -r "s/.*  //" | sed -r "s/ .*//"`
#echo "THE SYSTEM HAS THE $USED OF HD USED."

#echo ""
#echo "----------------------------------------------------------------------------------"
#echo ""

#/var/www/domains/dev.remote/sonar/bin/linux-x86-32/sonar.sh
#/etc/init.d/jenkins
