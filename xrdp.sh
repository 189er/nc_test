sudo ps aux|grep -E "wget|apt|curl|dpkg" >>/tmp/x0.c;
sudo apt -y install -y xfce4 xfce4-goodies xorg dbus-x11 x11-xserver-utils >/tmp/xf.txt;
sudo apt install xrdp -y >/tmp/xr.txt;
sudo bash -c "
echo runneradmin:123456|chpasswd ;  
echo runner:123456|chpasswd;
echo exec startxfce4 >>/etc/xrdp/xrdp.ini;"

sudo systemctl restart xrdp
