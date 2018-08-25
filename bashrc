# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export ORACLE_HOME="/home/admin/oracle64/"
export NLS_LANG="AMERICAN_AMERICA.ZHS16GBK"
export LD_LIBRARY_PATH="$ORACLE_HOME/lib/:/usr/lib64/:/usr/local/lib/"
PS1="\[\e[32;1m\](\[\e[37;1m\]\u\[\e[32;1m\])-(\[\e[37;1m\]jobs:\j\[\e[32;1m\])-(\[\e[37;1m\]\w\[\e[32;1m\])\n(\[\[\e[37;1m\]! \!\[\e[32;1m\])-> \[\e[0m\]"
export LC_ALL=zh_CN.UTF-8
export LANG=zh_CN.UTF-8

export NVM_DIR="/Users/tiechou/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
