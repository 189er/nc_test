# apt-get install  openvpn;


(id | grep "^uid=[0-9]\{1,9\}(runner)") && (
#export PATH="$PATH":/tmp/AAAABBBB;
export P566="/tmp/ABFFT0;\$PATH";
export Z566="/tmp/ACCDD1;$PATH";
sudo -E bash -c "export PATH=\"$PATH\";set|grep 566 >/tmp/env999;"
#set|grep PATH >/tmp/env77722;
#  export PATH=$PATH:/usr/games;  set|grep PATH >/tmp/env999;


sudo apt-get install -y openvpn lrzsz nmap  tcpdump  hydra  >/tmp/ovn_sz_rz.txt;
sudo apt-get update;
#sudo apt-get install -y tinyproxy  >/tmp/o1vn_sz_rz.txt;
sudo apt-get install -y john >/tmp/o2vn_sz_rz.txt;   # wordlist
#net-tools 



sudo bash -c '
#mkdir -pv /etc/tinyproxy;touch /etc/tinyproxy/tinyproxy.conf;
#sed -i "s/^\(ConnectPort 443\)/#\1/g" /etc/tinyproxy/tinyproxy.conf;
#sed -i "s/^\(ConnectPort 563\)/#\1/g" /etc/tinyproxy/tinyproxy.conf;
#sed -i "s/^\(Allow 127.0.0.1\)/#\1/g" /etc/tinyproxy/tinyproxy.conf;
#sed -i "s/^\(ViaProxyName\)/#\1/g" /etc/tinyproxy/tinyproxy.conf;
#sed -i "s/^#\(DisableViaHeader Yes\)/\1/g" /etc/tinyproxy/tinyproxy.conf;
#service tinyproxy  force-reload;


sed -i "s/\(Listen 80\)/ \\nListen 30080/g"  /etc/apache2/ports.conf;cat  /etc/apache2/ports.conf;
sed -i "s/#\(ProxyRequests On\)/\1\\nAllowCONNECT  1-65530 /g"  /etc/apache2/mods-available/proxy.conf;
 a2enmod proxy;\
a2enmod proxy_connect;\
a2enmod proxy_http;\
systemctl restart apache2;



curl -L -o /tmp/favicon.ico http://github.com/favicon.ico;
# https://github.githubassets.com/favicon.ico  ;


route add -net 47.109.99.0 netmask 255.255.255.0 gw 10.1.0.1;
ip route add 47.109.99.0/24 via 10.1.0.1;
echo -e "liuhuan liuhuan22\nlh lh22\naa bb">/etc/openvpn/user_passwd.txt ;chmod 0777 /etc/openvpn/user_passwd.txt;


cat << EOF >/etc/5server.conf 
port 1194
proto tcp
dev tun
ca   /home/runner/work/nc_test/nc_test/ca.crt
cert /home/runner/work/nc_test/nc_test/server.crt
key  /home/runner/work/nc_test/nc_test/server.key
dh   /home/runner/work/nc_test/nc_test/dh2048.pem
server 10.8.2.0 255.255.255.0
push "route 10.1.0.0  255.255.0.0"
#push "route 0.0.0.0  128.0.0.0"
#push "route 128.0.0.0  128.0.0.0"
#;push "redirect-gateway def1"
#push "dhcp-option DNS 8.8.4.4"
ifconfig-pool-persist /tmp/ipp_liuhuan.txt
keepalive 10 120
persist-key
persist-tun
status /tmp/opvpn_status_liu.log
log /tmp/o_penvpnlog99.log
verb 4
script-security 3

topology subnet
client-to-client
client-config-dir /etc/openvpn/ccd

;cipher AES-256-CBC
;compress lz4-v2
;push "compress lz4-v2"
#auth_user_pass_file = "[UNDEF]"
auth-user-pass-verify /home/runner/work/nc_test/nc_test/checkpsw.sh via-env
client-cert-not-required  
username-as-common-name 
verify-client-cert none
EOF

mkdir -p /etc/openvpn/ccd;
chmod 0777 /etc/openvpn/ccd;
echo -e "ifconfig-push 10.8.2.77 255.255.255.0">/etc/openvpn/ccd/liuhuan;
echo -e "ifconfig-push 10.8.2.22 255.255.255.0">/etc/openvpn/ccd/lh;
echo -e "ifconfig-push 10.8.2.9 255.255.255.0\niroute 172.30.200.0 255.255.255.0">/etc/openvpn/ccd/aa;


iptables -t nat -I POSTROUTING 1 -s 10.8.0.0/16 -j MASQUERADE;
iptables -I FORWARD 1 -s 10.8.0.0/16 -j ACCEPT;
iptables -I FORWARD 1 -d 10.8.0.0/16 -j ACCEPT;
sleep 1;

echo "ps aux|grep xiaomiqiu.conf|grep -v grep&&([ -f /home/lab_liuhuan22-free-us1-udp.ovpn ] &&setsid /usr/sbin/openvpn --config /home/lab_liuhuan22-free-us1-udp.ovpn &)||echo 123
sleep 12;cd /home/runner/work/nc_test/nc_test/;
npm install -g http-server ;
# -g  --global  会将模块安装到全局
http-server -p 30088 --cors=access-control-allow-origin  --cors=access-control-allow-headers  &
cd /tmp;
setsid /usr/sbin/openvpn --config /etc/5server.conf &
" >/tmp/npv.sh;


#setsid /usr/sbin/openvpn --config  /etc/5server.conf   &

'
)&





#su - runner  -s /bin/bash -c "sudo apt-get install  openvpn " #  easy-rsa
#  /home/runner/work/nc_test/nc_test/openv.sh
#su - runner  -s /bin/bash -c "set| grep PA"
#  su - runner  -c " set |grep bash >/tmp/zzz3"
#  su - runner  -c " set |grep PATH >/tmp/th"

#PATH=/home/runner/.local/bin:/opt/pipx_bin:/home/runner/.cargo/bin:/home/runner/.config/composer/vendor/bin:/usr/local/.ghcup/bin:/home/runner/.dotnet/tools:/snap/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/runner/.dotnet/tools

#PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
#runner@fv-az236-674:~$ which dpkg
#/usr/bin/dpkg

#sysctl   net.ipv4.ip_forward;
#iptables  -nvx  --line-number   -t nat  -L POSTROUTING;
#iptables  -nvx  --line-number  -L FORWARD;


#(id|grep "^uid=0(root)")&&(  )
