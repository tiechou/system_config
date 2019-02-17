# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

export LD_LIBRARY_PATH=/usr/lib:/usr/local/lib:$LD_LIBRARY_PATH

MAVEN_HOME=/usr/local/Cellar/maven/3.3.3
JAVA_HOME=$(/usr/libexec/java_home)
PATH=/opt/local/bin:/opt/local/sbin:$PATH
PATH=/usr/local/bin:/bin:/sbin:/usr/bin:$PATH
PATH=$JAVA_HOME/bin:$MAVEN_HOME/bin:$PATH

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
alias tailf="tail -f"

alias alibaba='ssh -o ServerAliveInterval=20 tiechou@login1.cm10.alibaba.org'
alias amazon='ssh -o ServerAliveInterval=20 -i ~/.ssh/amazon_ec.pem ec2-user@35.162.171.139'
alias rpm2cpio="/usr/local/Cellar/rpm2cpio/1.3/bin/rpm2cpio.pl"

alias gitl="git log --stat --graph"
alias gitb="git branch -a"
alias gits="git status"
alias gitr="git remote -v"

alias rdb='mysql -hrr-bp1369rv3t3517262public.mysql.rds.aliyuncs.com -utiechou -pbcHehf7LRLRr'
alias http_server="nohup python -m SimpleHTTPServer 8000 &"

## docker exec -it --privileged=true $(docker ps | grep -v CONTAINER | awk '{ print $1}') /bin/bash
alias dgraph='docker run -it --rm=true --memory=4g --publish=8010:8010 --volume=${HOME}:/home/admin --workdir=/home/admin/github/graph_embedding reg.docker.alibaba-inc.com/graph_embeding/graphsage:dev /bin/bash'
alias dlinux='docker run -it --rm=true --memory=4g --publish=9981:9981 --volume=${HOME}:/home/admin --workdir=/home/admin/code registry.cn-hangzhou.aliyuncs.com/tiechou/linux_env:001 /bin/bash'
alias dimage='docker image'

alias rdb='mysql -hrr-bp1369rv3t3517262public.mysql.rds.aliyuncs.com -utiechou -pbcHehf7LRLRr'
alias http_server="nohup python -m SimpleHTTPServer 8000 &"

alias aktest='~/code/pha-all/arcanist/bin/ak diff origin/develop --test'
alias akland='~/code/pha-all/arcanist/bin/ak land --onto develop'
alias akconfig='~/code/pha-all/arcanist/bin/ak set-config phabricator.uri https://aone.alibaba-inc.com/'
