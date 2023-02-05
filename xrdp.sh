sudo bash -c '
ps aux|grep -E "wget|apt|curl|dpkg"|grep -v grep >>/tmp/x0.c;
echo runneradmin:123456|chpasswd ;  
echo runner:123456|chpasswd;

while true;
do
fr5=$(sudo ps aux|grep -E "wget|apt|curl|dpkg"|grep -v grep);
[ -z $fr5 ]&&{

sudo apt -y install -y xfce4 xfce4-goodies xorg dbus-x11 x11-xserver-utils >/tmp/xf.txt;
sudo apt install xrdp -y >/tmp/xr.txt;
sudo bash -c "echo exec startxfce4 >>/etc/xrdp/xrdp.ini;"
sudo systemctl restart xrdp;
break;
}||sleep 5;
echo $fr5;
done
';
