#/usr/lib/apt/methods/http
# netstat -anlp|grep http
#  stat  /var/lib/dpkg/lock
# /var/lib/apt/lists/lock
# /var/cache/apt/archives/lock
#  /usr/bin/dpkg --force-confdef --force-confold --status-fd 47 --configure --pending
# /usr/bin/perl -w /usr/share/debconf/frontend /var/lib/dpkg/info/openvpn.postinst configure
#  sh /home/runner/work/nc_test/nc_test/xrdp.sh ;

cd /tmp;
ls -al  /usr/lib/firefox/firefox  /opt/microsoft/msedge/msedge;

[ ! -f /tmp/ubuntu_update ]&&sudo apt-get update   &&touch /tmp/ubuntu_update;

tmpFunc6(){ 
    touch /tmp/aB/{xorg,dbus-x11,x11-xserver-utils,xterm,xinit,xorgxrdp};
    sudo apt-get install -y   xorg dbus-x11 x11-xserver-utils xterm xinit xorgxrdp;
    rm /tmp/aB/{xorg,dbus-x11,x11-xserver-utils,xterm,xinit,xorgxrdp};
}



while true
do
    [ "`ls -A /tmp/aB/`" = "" ] && [ -f /tmp/ubuntu_update ] && tmpFunc6&&break;
    sleep 1;
done



tmpFunc8(){ 
    touch /tmp/aB/{xrdp,xfonts-wqy,ttf-wqy-zenhei};
    which Xorg&&sudo apt-get install -y   xrdp xfonts-wqy ttf-wqy-zenhei;
    rm /tmp/aB/{xrdp,xfonts-wqy,ttf-wqy-zenhei};
}


while true
do
    [ "`ls -A /tmp/aB/`" = "" ] && [ -f /tmp/ubuntu_update ] && tmpFunc8&&break;
    sleep 1;
done







sudo bash -c '
ps aux|grep -v chisel|grep -v grep|grep -E "wget|apt|curl|dpkg" >>/tmp/x0.c;
stat /var/lib/dpkg/lock-frontend >>/tmp/x0.c;

echo "xterm -bg black -fg white -geometry 150x50+20+10  ;">~/.xsession;
chmod 0777 ~/.xsession;  cat ~/.xsession;

set +H
echo "#!/bin/bash
/opt/microsoft/msedge/msedge  \"https://www.bing.com/\"   --no-sandbox  &" >/bin/edge

echo "#!/bin/bash
echo in xrdp.sh
/usr/bin/chromium-browser  \"https://www.baidu.com/\"   --no-sandbox  &" >/bin/baidu


echo "#!/bin/bash
echo in xrdp.sh
/usr/lib/firefox/firefox  \"https://www.bing.com/\"   --no-sandbox &" >/bin/bing
set -H
chmod 0777 /bin/bing /bin/edge /bin/baidu ;

echo "msedge \"https://drive.google.com/u/0/uc?id=1Hp0RLikJ-B6el_qGNYOFn0nrL2BJyLZQ&export=download\"">/tmp/chrqq.sh
echo "msedge \"https://drive.google.com/file/d/1Fe7N0CAUDP3UPdZPsJI23SgK19aoJr6O/view\"">/tmp/chraa.sh
';




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
