# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

export LD_LIBRARY_PATH=/usr/lib:/usr/local/lib:$LD_LIBRARY_PATH

MAVEN_HOME=/usr/local/Cellar/maven/3.3.3
PATH=/opt/local/bin:/opt/local/sbin:$PATH
PATH=/usr/local/bin:/bin:/sbin:/usr/bin:$PATH
PATH=$MAVEN_HOME/bin:$PATH

export PATH
unset USERNAME

export NLS_DATE_FORMAT='YYYY-MM-DD HH24:MI:SS'

PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
export PROMPT_COMMAND

export LANG=zh_CN.UTF-8
export LC_ALL=zh_CN.UTF-8

export CLICOLOR=1
export GREP_OPTIONS="--color=auto"

alias vi="vim"
alias ls="ls -G"
alias ll="ls -l"
alias mv="mv -i"
alias md5sum="md5"
alias grep="grep --color"
alias golf='/Users/tiechou/.autologin.sh.golf'
alias amazon='ssh -o ServerAliveInterval=20 -i ~/.ssh/amazon_ec.pem ec2-user@35.162.171.139'
alias tailf="tail -f"
alias rpm2cpio="/usr/local/Cellar/rpm2cpio/1.3/bin/rpm2cpio.pl"
alias rvi="rvictl -s f7bd85d812f86894845ad5f7b18ec6e877e7d09d"

alias gitl="git log --stat --graph"
alias gitb="git branch -a"
alias gits="git status"
alias gitr="git remote -v"

alias mysql_yb='mysql -hrm-bp16h0i87ejqm1oq6public.mysql.rds.aliyuncs.com -utiechou -pbcHehf7LRLRr'
alias rdb='mysql -hrr-bp1369rv3t3517262public.mysql.rds.aliyuncs.com -utiechou -pbcHehf7LRLRr'
alias http_server="nohup python -m SimpleHTTPServer 8000 &"

alias dgraph='docker run -m 4g -p 8010:8010 -w ${HOME} -v${HOME}:${HOME} --rm -i -t reg.docker.alibaba-inc.com/graph_embeding/graphsage:dev /bin/bash'
alias dlinux='docker run -it --rm=true --memory=4g --publish=9981:9981 --volume=${HOME}:/home/admin --workdir=/home/admin/code tiechou/linux_env /bin/bash'
alias dimage='docker image'

