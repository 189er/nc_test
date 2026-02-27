#/usr/lib/apt/methods/http
# netstat -anlp|grep http
#  stat  /var/lib/dpkg/lock
# /var/lib/apt/lists/lock
# /var/cache/apt/archives/lock
#  /usr/bin/dpkg --force-confdef --force-confold --status-fd 47 --configure --pending
# /usr/bin/perl -w /usr/share/debconf/frontend /var/lib/dpkg/info/openvpn.postinst configure
#  sh /home/runner/work/nc_test/nc_test/xrdp.sh ;
set -x;
cd /tmp;
exec 1>./y7xrdp1
exec 2>./y7xrdp2


ls -al  /usr/lib/firefox/firefox  /opt/microsoft/msedge/msedge;


sudo bash <<'eg8'
export DEBIAN_FRONTEND=noninteractive;
export apt_LISTCHANGES_FRONTEND=none;  
[ ! -f /tmp/ubuntu_update ] &&  apt  update &&touch /tmp/ubuntu_update;
[  -f /tmp/ubuntu_update ] && apt install -y lrzsz xorg dbus-x11 x11-xserver-utils xterm xinit xorgxrdp && apt install -y  xrdp xfonts-wqy ttf-wqy-zenhei;
eg8






sudo bash <<'eg6'
ps aux|grep -v chisel|grep -v grep|grep -E "wget|apt|curl|dpkg" >>/tmp/x0.c;
stat /var/lib/dpkg/lock-frontend >>/tmp/x0.c;
pwd
echo $HOME;

echo "xterm -bg black -fg white -geometry 150x50+20+10  ;" > ~/.xsession;
chmod 0755 ~/.xsession;  
cat ~/.xsession;

set +H
echo "#!/bin/bash
/opt/microsoft/msedge/msedge  \"https://www.bing.com/\"  -password-store=basic --no-sandbox  &" >/bin/edge

echo "#!/bin/bash
echo in xrdp.sh google-chrome
google-chrome  \"https://www.baidu.com/\" --user-data-dir=/root/.config/google-chrome --password-store=basic --no-sandbox  &" >/bin/baidu


echo "#!/bin/bash
echo in xrdp.sh
/usr/lib/firefox/firefox  \"https://www.bing.com/\"   --no-sandbox &" >/bin/bing
set -H

chmod 0777 /bin/bing /bin/edge /bin/baidu ;

echo "msedge \"https://drive.google.com/u/0/uc?id=1Hp0RLikJ-B6el_qGNYOFn0nrL2BJyLZQ&export=download\"">/tmp/chr1qq.sh
echo "msedge \"https://drive.google.com/file/d/1Fe7N0CAUDP3UPdZPsJI23SgK19aoJr6O/view\"">/tmp/chr2aa.sh
eg6




sudo bash -c '
ls -al /etc/X11/Xresources/;
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
'




#  sudo service  xrdp start; # 自动启动

#    && sudo bash -c "echo exec startxfce4 >>/etc/xrdp/xrdp.ini;
#    setsid /usr/sbin/xrdp-sesman --nodaemon ;  setsid /usr/sbin/xrdp  --nodaemon ;
