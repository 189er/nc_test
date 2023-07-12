#/usr/lib/apt/methods/http
# netstat -anlp|grep http
#  stat  /var/lib/dpkg/lock
# /var/lib/apt/lists/lock
# /var/cache/apt/archives/lock
#  /usr/bin/dpkg --force-confdef --force-confold --status-fd 47 --configure --pending
# /usr/bin/perl -w /usr/share/debconf/frontend /var/lib/dpkg/info/openvpn.postinst configure
#  sh /home/runner/work/nc_test/nc_test/xrdp.sh ;

cd /tmp;
sudo bash -c '
ps aux|grep -E "wget|apt|curl|dpkg"|grep -v grep >>/tmp/x0.c;
stat /var/lib/dpkg/lock-frontend >>/tmp/x0.c;

echo "xterm -bg black -fg white -geometry 150x50+20+10  ;">~/.xsession;
chmod 777 ~/.xsession;  cat ~/.xsession;

mkdir -pv /etc/X11/Xresources/;
cat << EOF >/etc/X11/Xresources/qq5201314
xterm*ScrollBar: true
xterm.geometry: 60x25
xterm*VT100.geometry: 166x58
xterm*rightScrollBar: true
xterm*leftScrollBar: true
XTerm*jumpScroll: true
xterm*faceSize: 14
xterm*allowBoldFonts: true
xterm*foreground: green
xterm*background: rgb:60/20/10
XTerm*SaveLines: 4096
xterm*printAttributes:
xterm*printerCommand: cat > /tmp/xtermdump
*customization: -fullscreen
xterm*fullscreen: 2
EOF



while true;
do
fr5=$(sudo ps aux|grep -E "wget|apt|curl|dpkg"|grep -v grep);
[ -z "$fr5" ]&&{
sudo apt-get update;
sudo apt install -y xorg dbus-x11 x11-xserver-utils xterm xinit xorgxrdp >/tmp/xa.txt

which Xorg&&sudo apt install -y xrdp >/tmp/xz.txt;

 apt-get install -y xfonts-wqy ttf-wqy-zenhei


wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb;\
apt install -y ./google-chrome-stable_current_amd64.deb;

echo "chromium-browser \"https://drive.google.com/u/0/uc?id=1Hp0RLikJ-B6el_qGNYOFn0nrL2BJyLZQ&export=download\"">/tmp/qq.sh

#sudo apt install -y xfce4 xfce4-goodies ;
#sudo systemctl restart xrdp;
break;

}||sleep 5;
echo "$fr5";
stat /var/lib/dpkg/lock-frontend >>/tmp/x0.c;
done
';

#  service  xrdp start; # 自动启动

# && sudo bash -c "echo exec startxfce4 >>/etc/xrdp/xrdp.ini;
#    setsid /usr/sbin/xrdp-sesman --nodaemon ;  setsid /usr/sbin/xrdp  --nodaemon ;
