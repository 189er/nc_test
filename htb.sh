is_empty_dir(){ 
    return `ls -A $1|wc -w`
}

# 本节不在进行apt-update,因为前置条件为openv.sh

tmpFunc2(){ 
    touch /tmp/aB/{nmap,tcpdump,hydra,bridge-utils,uml-utilities};
    sudo apt-get install -y nmap tcpdump hydra bridge-utils uml-utilities;
    rm /tmp/aB/{nmap,tcpdump,hydra,bridge-utils,uml-utilities};
}

while true
do
    [ "`ls -A /tmp/aB/`" = "" ] &&[ -f /tmp/ubuntu_update ] && tmpFunc2&&break;
    sleep 1;
done


# if [ "`ls -A /tmp/aB/`" = "" ] 
# then
#  echo goon-123
#  tmpFunc2
# else
#     echo "/tmp/aB/ is not empty" ; 
#     sleep 1; 
#     while true
#     do
#         [ "`ls -A /tmp/aB/`" = "" ] &&tmpFunc2&&break;
#         sleep 1;
#     done
# fi



sudo bash -c 'brctl addbr virbr0 ;
ifconfig virbr0 10.8.188.1 netmask 255.255.255.0 up;';

tmpFunc4(){ 
    touch /tmp/aB/{john,dnsmasq};
    sudo apt-get install -y john dnsmasq;
    rm /tmp/aB/{john,dnsmasq};

    cat <<EOO>/etc/dnsmasq.conf
    port = 5353
    dhcp-sequential-ip
    interface=br0
    server=114.114.114.114 
    dhcp-range=10.8.188.2,10.8.188.22,255.255.255.0,24h
    dhcp-option=option:dns-server,8.8.8.8,10.8.188.1
EOO
service dnsmasq stop;
service dnsmasq start;
}

# wordlist
# net-tools 

while true
do
    [ "`ls -A /tmp/aB/`" = "" ] &&[ -f /tmp/ubuntu_update ] && tmpFunc4 &&break;
    sleep 1;
done





