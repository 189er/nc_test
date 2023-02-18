#/usr/lib/apt/methods/http
# netstat -anlp|grep http
#  stat  /var/lib/dpkg/lock
# /var/lib/apt/lists/lock
# /var/cache/apt/archives/lock
#  /usr/bin/dpkg --force-confdef --force-confold --status-fd 47 --configure --pending
# /usr/bin/perl -w /usr/share/debconf/frontend /var/lib/dpkg/info/openvpn.postinst configure


sudo bash -c '
ps aux|grep -E "wget|apt|curl|dpkg"|grep -v grep >>/tmp/x0.c;
stat /var/lib/dpkg/lock-frontend >>/tmp/x0.c;


while true;
do
fr5=$(sudo ps aux|grep -E "wget|apt|curl|dpkg"|grep -v grep);
[ -z "$fr5" ]&&{
sudo apt-get update;
sudo apt install -y xorg dbus-x11 x11-xserver-utils xterm xinit xorgxrdp >/tmp/xa.txt&&sudo apt install -y xrdp >/tmp/xz.txt;
#sudo apt install -y xfce4 xfce4-goodies ;
#sudo systemctl restart xrdp;
break;

}||sleep 5;
echo "$fr5";
stat /var/lib/dpkg/lock-frontend >>/tmp/x0.c;
done
';

# &&sudo bash -c "echo exec startxfce4 >>/etc/xrdp/xrdp.ini;
#    setsid /usr/sbin/xrdp-sesman --nodaemon ;  setsid /usr/sbin/xrdp  --nodaemon ;
