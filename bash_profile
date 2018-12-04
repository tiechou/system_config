# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

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
# kill -l                       # 查看 Linux SIG 定义

# 符号名　　信号值 描述　　　　　　　　　　　　　　　　是否符合POSIX
# SIGHUP　　1　　　在控制终端上检测到挂断或控制线程死亡　　是
# SIGINT　　2　　　交互注意信号　　　　　　　　　　　　　　是
# SIGQUIT　 3　　　交互中止信号　　　　　　　　　　　　　　是
# SIGILL　　4　　　检测到非法硬件的指令　　　　　　　　　　是
# SIGTRAP　 5　　　从陷阱中回朔　　　　　　　　　　　　　　否
# SIGABRT　 6　　　异常终止信号　　　　　　　　　　　　　　是
# SIGEMT　　7　　　EMT 指令　　　　　　　　　　　　　　　　否
# SIGFPE　　8　　　不正确的算术操作信号　　　　　　　　　　是
# SIGKILL　 9　　　终止信号　　　　　　　　　　　　　　　　是
# SIGBUS　　10　　 总线错误　　　　　　　　　　　　　　　　否
# SIGSEGV　 11　　 检测到非法的内存调用　　　　　　　　　　是
# SIGSYS　　12　　 系统call的错误参数　　　　　　　　　　　否
# SIGPIPE　 13　　 在无读者的管道上写　　　　　　　　　　　是
# SIGALRM　 14　　 报时信号　　　　　　　　　　　　　　　　是
# SIGTERM　 15　　 终止信号　　　　　　　　　　　　　　　　是
# SIGURG　　16　　 IO信道紧急信号　　　　　　　　　　　　　否
# SIGSTOP　 17　　 暂停信号　　　　　　　　　　　　　　　　是
# SIGTSTP　 18　　 交互暂停信号　　　　　　　　　　　　　　是
# SIGCONT　 19　　 如果暂停则继续　　　　　　　　　　　　　是
# SIGCHLD　 20　　 子线程终止或暂停　　　　　　　　　　　　是
# SIGTTIN　 21　　 后台线程组一成员试图从控制终端上读出　　是
# SIGTTOU　 22　　 后台线程组的成员试图写到控制终端上　　　是
# SIGIO　　 23　　 允许I/O信号 　　　　　　　　　　　　　　否
# SIGXCPU　 24　　 超出CPU时限　　　　　　　　　　　　　　 否
# SIGXFSZ　 25　　 超出文件大小限制　　　　　　　　　　　　否
# SIGVTALRM 26　　 虚时间警报器　　　　　　　　　　　　　　否
# SIGPROF　 27　　 侧面时间警报器　　　　　　　　　　　　　否
# SIGWINCH　28　　 窗口大小的更改　　　　　　　　　　　　　否
# SIGINFO　 29　　 消息请求　　　　　　　　　　　　　　　　否
# SIGUSR1 　30　　 保留作为用户自定义的信号1　　　　　　　 是
# SIGUSR2 　31　　 保留作为用户自定义的信号　　　　　　　　是


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

