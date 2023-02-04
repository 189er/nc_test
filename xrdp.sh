sudo apt -y install -y xfce4 xfce4-goodies xorg dbus-x11 x11-xserver-utils
sudo apt install xrdp -y
sudo bach -c "
echo runneradmin:123456|chpasswd ;  
echo runner:123456|chpasswd;
echo exec startxfce4 >>/etc/xrdp/xrdp.ini;"
sudo systemctl restart xrdp
