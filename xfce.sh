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
export LANG=en_US.UTF-8
export DEBIAN_FRONTEND=noninteractive
export APT_LISTCHANGES_FRONTEND=none

sudo bash -c '
echo "/opt/microsoft/msedge/msedge  \"https://www.bing.com/search?showconv=1&q=bing%20AI&sf=codex3p&form=MA13FV\"   --no-sandbox & " >/bin/edge

echo "/usr/lib/firefox/firefox  \"https://www.bing.com/search?showconv=1&q=bing%20AI&sf=codex3p&form=MA13FV\"   --no-sandbox &" >/bin/bing
chmod 0777 /bin/bing /bin/edge ;



mkdir -pv /root/.config/autostart/;
cat<<EOF>/root/.config/autostart/firefox.desktop
[Desktop Entry]
Type=Application
Exec=/usr/lib/firefox/firefox  "https://www.bing.com/search?showconv=1&q=bing%20AI&sf=codex3p&form=MA13FV"   --no-sandbox
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name[en_US]=Firefox
Name=Firefox
Comment[en_US]=Start Firefox browser on login
Comment=Start Firefox browser on login
EOF

chmod 0777 /root/.config/autostart/firefox.desktop;
'


[ ! -f /tmp/ubuntu_update ]&&touch /tmp/ubuntu_update&&sudo apt-get update;

tmpFunc_xfce(){ 
    mkdir -pv /tmp/aB/;
    touch /tmp/aB/{xorg,dbus-x11,x11-xserver-utils,xterm,xinit,xorgxrdp};
    sudo apt-get install -y xorg dbus-x11 x11-xserver-utils xterm xinit xorgxrdp;
    rm /tmp/aB/{xorg,dbus-x11,x11-xserver-utils,xterm,xinit,xorgxrdp};
}

while true
do
    [ "`ls -A /tmp/aB/`" = "" ] && [ -f /tmp/ubuntu_update ] && tmpFunc_xfce&&break;
    sleep 1;
done

echo 123123rty;


tmpFunc8_xfce(){ 
    touch /tmp/aB/{xrdp,xfonts-wqy,ttf-wqy-zenhei};
    which Xorg&&sudo apt-get install -y xrdp xfonts-wqy ttf-wqy-zenhei;
    rm /tmp/aB/{xrdp,xfonts-wqy,ttf-wqy-zenhei};
}

while true
do
    [ "`ls -A /tmp/aB/`" = "" ] && [ -f /tmp/ubuntu_update ] && tmpFunc8_xfce&&break;
    sleep 1;
done

# has tcp 3389

# systemctl status xrdp ;

echo zzr5yty129;


sudo bash -c '
ps aux|grep -v chisel|grep -v grep|grep -E "wget|apt|curl|dpkg" >>/tmp/x0.c;
stat /var/lib/dpkg/lock-frontend >>/tmp/x02.c;

echo "xterm -bg black -fg white -geometry 150x50+20+10  ;" > ~/.xsession;

#echo " exec startxfce4 ">~/.xsession;
#echo " exec startxfce4 ">/root/.xsession;
[ -f /root/.xsession ]&&chmod 0777 /root/.xsession;
[ -f ~/.xsession ]&&chmod 0777 ~/.xsession;  cat ~/.xsession;


while true;
do
fr5=$(sudo ps aux|grep -v chisel|grep -v grep|grep -E "wget|apt|curl|dpkg");
[ -z "$fr5" ]&&{
 
apt install -y xfce4  ; #xfce4-goodies
echo " exec startxfce4 ">/root/.xsession;
(sleep 1;systemctl restart xrdp;)&
echo okok29;
break;

}||sleep 5;
echo "$fr5";
stat /var/lib/dpkg/lock-frontend >>/tmp/x0_xfce.c;
done
';


echo yhu7887;


# sudo bash -c '
# ls -al /etc/X11/Xresources/;
# mkdir -pv /etc/X11/Xresources/;
# cat << EOF >/etc/X11/Xresources/qq5201314
# xterm*ScrollBar: true
# xterm.geometry: 60x25
# xterm*VT100.geometry: 166x58
# xterm*rightScrollBar: true
# xterm*leftScrollBar: true
# XTerm*jumpScroll: true
# xterm*faceSize: 14
# xterm*allowBoldFonts: true
# xterm*foreground: green
# xterm*background: rgb:60/20/10
# XTerm*SaveLines: 4096
# xterm*printAttributes:
# xterm*printerCommand: cat > /tmp/xtermdump
# *customization: -fullscreen
# xterm*fullscreen: 2
# EOF
# '

#cat /etc/xrdp/xrdp.ini;

#sudo bash -c "echo exec startxfce4 >>/etc/xrdp/xrdp.ini;" 


#  sudo service  xrdp start; # 自动启动

#    && 
#    setsid /usr/sbin/xrdp-sesman --nodaemon ;  setsid /usr/sbin/xrdp  --nodaemon ;
