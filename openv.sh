set -x;
cd /tmp;
exec 1>./x6vpn1
exec 2>./x6vpn2




(
#export PATH="$PATH":/tmp/AAAABBBB;
export P566="/tmp/ABFFT0;\$PATH";
export Z566="/tmp/ACCDD1;$PATH";
sudo -E bash -c "export PATH=\"$PATH\";set|grep 566 >/tmp/env999;"
#set|grep PATH >/tmp/env77722;
#  export PATH=$PATH:/usr/games;  set|grep PATH >/tmp/env999;



sudo bash <<'eg3'
export DEBIAN_FRONTEND=noninteractive;
export apt_LISTCHANGES_FRONTEND=none;  
[ ! -f /tmp/ubuntu_update ] &&  apt  update   &&touch /tmp/ubuntu_update;
[  -f /tmp/ubuntu_update ] && apt install -y openvpn lrzsz ;
eg3


curl -4L -o /tmp/favicon.ico http://github.com/favicon.ico &
# https://github.githubassets.com/favicon.ico  ;






cat << 'EOF' >/tmp/1194notls.conf 
port 21194
proto udp4
dev tun1
ifconfig 10.8.228.1 255.255.255.0 # vpn-server
secret /etc/openvpn/static.key
cipher none
auth none
persist-tun
keepalive 10 60
push "route 180.76.198.0  255.255.255.128" #gitee 
verb 4
topology subnet
EOF






cat<< 'EOF' >/tmp/a1194no_tlc.conf
proto udp4
remote 127.0.0.1 15074
# ngrok.xiaomiqiu123.top   #  https://139.196.235.6:24449/tcpip-50088/gitact_openvpn
# 127.0.0.1
dev tun2
ifconfig 10.8.128.2 255.255.255.0  #random ip
secret /etc/openvpn/static.key 
route 180.76.198.77 255.255.255.255 10.8.128.1 #gitee
keepalive 10 60
verb 4
persist-tun
cipher none
auth none
topology subnet
EOF

sudo bash <<E7OF
[ -f /tmp/tmux.elf ]&&/tmp/tmux.elf new -s npvS-openv-sh -d;
E7OF

sudo bash <<E7OF
[ -f /tmp/tmux.elf ]&&/tmp/tmux.elf new -s npvC-openv-sh -d;
E7OF


which tmux openvpn;

sudo ls -al /tmp/tmux*;


cat<<'EOF'>/tmp/5server.conf 
port 1194
proto tcp4
dev tun1
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
log /tmp/o_penvpnlog1194.log
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
#client-cert-not-required   #OpenVPN 2.5.11 x86_64-pc-linux-gnu
username-as-common-name 
verify-client-cert none
EOF


#echo "ps aux|grep xiaomiqiu.conf|grep -v grep&&([ -f /home/lab_liuhuan22-free-us1-udp.ovpn ] &&setsid /usr/sbin/openvpn --config /home/lab_liuhuan22-free-us1-udp.ovpn &)||echo 1237749

sudo ls -al /home/lab*.ovpn ;

echo "ps aux|grep -v grep&&([ -f /home/lab_liuhuan22-free-us1-udp.ovpn ] &&setsid /usr/sbin/openvpn --config /home/lab_liuhuan22-free-us1-udp.ovpn &)||echo 1237749
sleep 9;
cd /home/runner/work/nc_test/nc_test/;
#cat c2c.sh|tr -d \"\\\r\"|tee ccc.sh;
npm install -g http-server ;
            # -g  --global  会将模块安装到全局
which npm http-server ;
http-server -p 30088 --cors=access-control-allow-origin  --cors=access-control-allow-headers  &

tmux send-keys -t npvS-openv-sh ' cd /tmp;/usr/sbin/openvpn --config /tmp/5server.conf  ' Enter

" >/tmp/npv.sh;



#  如下建立openVPN-S的账号密码。nat出局

sudo bash -c '
route add -net 47.109.99.0 netmask 255.255.255.0 gw 10.1.0.1;
#ip route add 47.109.99.0/24 via 10.1.0.1; #RTNETLINK answers: File exists

echo -e "liuhuan liuhuan22\nlh lh22\naa bb">/etc/openvpn/user_passwd.txt ;
chmod 0777 /etc/openvpn/user_passwd.txt;


mkdir -pv /etc/openvpn/ccd;
chmod 0777 /etc/openvpn/ccd;
echo -e "ifconfig-push 10.8.2.77 255.255.255.0">/etc/openvpn/ccd/liuhuan;
echo -e "ifconfig-push 10.8.2.22 255.255.255.0">/etc/openvpn/ccd/lh;
echo -e "ifconfig-push 10.8.2.9 255.255.255.0\niroute 172.30.200.0 255.255.255.0">/etc/openvpn/ccd/aa;

iptables -t nat -I POSTROUTING 1 -s 10.8.0.0/16 -j MASQUERADE;
iptables -I FORWARD 1 -s 10.8.0.0/16 -j ACCEPT;
iptables -I FORWARD 1 -d 10.8.0.0/16 -j ACCEPT;

sleep 1;echo /tmp/tmux.elf send-keys -t npvS-openv-sh " cd /tmp;/usr/sbin/openvpn --config /tmp/5server.conf  " Enter
 # 20250620 hjc
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