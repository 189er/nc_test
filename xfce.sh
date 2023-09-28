#/usr/lib/apt/methods/http
# netstat -anlp|grep http
#  stat  /var/lib/dpkg/lock
# /var/lib/apt/lists/lock
# /var/cache/apt/archives/lock
#  /usr/bin/dpkg --force-confdef --force-confold --status-fd 47 --configure --pending
# /usr/bin/perl -w /usr/share/debconf/frontend /var/lib/dpkg/info/openvpn.postinst configure
#  sh /home/runner/work/nc_test/nc_test/xrdp.sh ;

cd /tmp; 
export LANG=en_US.UTF-8
export DEBIAN_FRONTEND=noninteractive
export APT_LISTCHANGES_FRONTEND=none


ln -s /opt/microsoft/msedge/msedge /bin/edge;
echo 'edge "https://www.microsoft.com/en-us/bing" & ' >/tmp/111.sh 


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


sudo bash -c '
ps aux|grep -v chisel|grep -v grep|grep -E "wget|apt|curl|dpkg" >>/tmp/x0.c;
stat /var/lib/dpkg/lock-frontend >>/tmp/x02.c;

#echo "xterm -bg black -fg white -geometry 150x50+20+10  ;">~/.xsession;
echo " exec startxfce4 ">~/.xsession;
chmod 777 ~/.xsession;  cat ~/.xsession;


while true;
do
fr5=$(sudo ps aux|grep -v chisel|grep -v grep|grep -E "wget|apt|curl|dpkg");
[ -z "$fr5" ]&&{
 
sudo apt install -y xfce4  ; #xfce4-goodies
(sleep 1;sudo systemctl restart xrdp;)&
echo okok29;
break;

}||sleep 5;
echo "$fr5";
stat /var/lib/dpkg/lock-frontend >>/tmp/x0_xfce.c;
done
';


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
