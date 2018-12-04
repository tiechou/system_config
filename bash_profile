# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# uname -a                      # 查看内核/操作系统/CPU信息的linux系统信息命令
# env                           # 查看环境变量资源
# w                             # 查看活动用户
# id                            # 查看指定用户信息
# last                          # 查看用户登录日志

# cat /etc/issue   		        # 查看操作系统版本
# cat /proc/cpuinfo             # 查看CPU相关参数的linux系统命令
# cat /proc/partitions          # 查看linux硬盘和分区信息的系统信息命令
# cat /proc/meminfo             # 查看linux系统内存信息的linux系统命令
# cat /proc/version             # 查看版本，类似uname -r
# cat /proc/ioports             # 查看设备io端口
# cat /proc/interrupts          # 查看中断
# cat /proc/swaps               # 查看所有swap分区的信息
# cat /proc/loadavg             # 查看系统负载磁盘和分区

# grep MemTotal /proc/meminfo	# 查看内存总量
# grep MemFree /proc/meminfo    # 查看空闲内存量
# cut -d: -f1 /etc/passwd  		# 查看系统所有用户
# cut -d: -f1 /etc/group   		# 查看系统所有组

# free -m                       # 查看内存使用量和交换区使用量
# df -h                         # 查看各分区使用情况
# du -sh                        # 查看指定目录的大小
# mount | column -t             # 查看挂接的分区状态
# fdisk -l                      # 查看所有分区
# swapon -s                     # 查看所有交换分区
# dmesg | grep IDE              # 查看启动时IDE设备检测状况网络
# ifconfig                      # 查看所有网络接口的属性
# iptables -L                   # 查看防火墙设置
# route -n                      # 查看路由表
# netstat -lntp                 # 查看所有监听端口
# netstat -antp                 # 查看所有已经建立的连接
# netstat -s                    # 查看网络统计信息进程
# crontab -l                    # 查看当前用户的计划任务服务
# chkconfig –list               # 列出所有系统服务
# chkconfig –list | grep on     # 列出所有启动的系统服务程序
# rpm -qa                       # 查看所有安装的软件包
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
alias ctags="rm -f tags && ctags -R --languages=c++ --c++-kinds=+px --fields=+aiKSz --extra=+q"
alias http_server="nohup python -m SimpleHTTPServer 8000 &"

alias alibaba='ssh -o ServerAliveInterval=20 tiechou@login1.cm10.alibaba.org'
alias amazon='ssh -o ServerAliveInterval=20 -i ~/.ssh/amazon_ec.pem ec2-user@35.162.171.139'

alias gitl="git log --stat --graph"
alias gitb="git branch -a"
alias gits="git status"
alias gitr="git remote -v"

alias dgraph='docker run --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -m 12g -p 8010:8010 -w ${HOME} -v${HOME}:${HOME} --rm -i -t reg.docker.alibaba-inc.com/graph_embeding/graphsage:dev /bin/bash'
alias dlinux='docker run -it --rm=true --memory=4g --publish=9981:9981 --volume=${HOME}:/home/admin --workdir=/home/admin/code tiechou/linux_env /bin/bash'
# docker exec -it 251ad0789d01 /bin/bash
# docker ps
alias dimage='docker image'

alias aktest='~/code/pha-all/arcanist/bin/ak diff origin/develop --test'
alias akland='~/code/pha-all/arcanist/bin/ak land --onto develop'
alias akconfig='~/code/pha-all/arcanist/bin/ak set-config phabricator.uri https://aone.alibaba-inc.com/'

