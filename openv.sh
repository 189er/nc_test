export PATH="$PATH":/usr/games;
# apt-get install  openvpn;
sudo -E bash -c "set|grep PATH >/tmp/env999;export PATH="$PATH":/usr/games;apt-get install  openvpn;"

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



(id|grep "^uid=0(root)")&&(
export PATH="$PATH":/usr/games;
apt-get install  openvpn;

#grep -v "^#" /usr/share/easy-rsa/vars | grep -v "^$" >/usr/share/easy-rsa/vars.exp;
#touch ~/.rnd;
#touch /root/.rnd ;
#chmod 0777  /root/.rnd;
#cd /usr/share/easy-rsa/;source vars.exp;
chmod 0777 /home/runner/work/nc_test/nc_test/*;
echo "liuhuan liuhuan22">/etc/openvpn/user_passwd.txt ;chmod 0777 /etc/openvpn/user_passwd.txt;
#ln -s /usr/share/easy-rsa/openssl-0.9.8.cnf /usr/share/easy-rsa/openssl.cnf
#./clean-all
#./build-ca --batch
#touch /usr/share/easy-rsa/keys/index.txt.attr
#./build-key-server  --batch server
#./build-dh

cat << EOF >/etc/server.conf 
port 1194
proto tcp
dev tun
ca   /home/runner/work/nc_test/nc_test/ca.crt
cert /home/runner/work/nc_test/nc_test/server.crt
key  /home/runner/work/nc_test/nc_test/server.key
dh   /home/runner/work/nc_test/nc_test/dh2048.pem
server 10.8.2.0 255.255.255.0
push "route 10.1.0.0  255.255.0.0"
push "route 0.0.0.0  128.0.0.0"
push "route 128.0.0.0  128.0.0.0"
;push "redirect-gateway def1"
push "dhcp-option DNS 8.8.4.4"
ifconfig-pool-persist /etc/openvpn/ccd/ipp_liuhuan.txt
keepalive 10 120
persist-key
persist-tun
status /tmp/openvpn_status_liu.log
verb 4
script-security 3

topology subnet
client-to-client
client-config-dir /etc/openvpn/ccd

;cipher AES-256-CBC
;compress lz4-v2
;push "compress lz4-v2"
#auth_user_pass_file = '[UNDEF]'
auth-user-pass-verify /home/runner/work/nc_test/nc_test/checkpsw.sh via-env
client-cert-not-required  
username-as-common-name 
verify-client-cert none
EOF

mkdir -p /etc/openvpn/ccd;
chmod 0777 /etc/openvpn/ccd;
echo -e 'ifconfig-push 10.8.2.5 255.255.255.0\niroute 172.30.200.0 255.255.255.0'>/etc/openvpn/ccd/liuhuan;

iptables -t nat -I POSTROUTING 1 -s 10.8.0.0/16 -j MASQUERADE;
iptables -I FORWARD 1 -s 10.8.0.0/16 -j ACCEPT;
iptables -I FORWARD 1 -d 10.8.0.0/16 -j ACCEPT;
sleep 1;
#setsid /usr/sbin/openvpn --config  /etc/server.conf   &
)
