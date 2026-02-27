#[ ! -f /tmp/ubuntu_update ]&&touch /tmp/ubuntu_update&&sudo apt-get update;




tmpFunc123(){ 
    touch /tmp/aB/{trzsz};
    sudo apt-get install -y trzsz;
    rm /tmp/aB/{trzsz};   
}

while true
do
    [ "`ls -A /tmp/aB/`" = "" ] && [ -f /tmp/ubuntu_update ] && tmpFunc123&&break;
    sleep 1;
done