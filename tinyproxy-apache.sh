#tinyproxy

sudo bash -c '
mkdir -pv /etc/tinyproxy;
touch /etc/tinyproxy/tinyproxy.conf;
sed -i "s/^\(ConnectPort 443\)/#\1/g" /etc/tinyproxy/tinyproxy.conf;
sed -i "s/^\(ConnectPort 563\)/#\1/g" /etc/tinyproxy/tinyproxy.conf;
sed -i "s/^\(Allow 127.0.0.1\)/#\1/g" /etc/tinyproxy/tinyproxy.conf;
sed -i "s/^\(ViaProxyName\)/#\1/g" /etc/tinyproxy/tinyproxy.conf;
sed -i "s/^#\(DisableViaHeader Yes\)/\1/g" /etc/tinyproxy/tinyproxy.conf;
service tinyproxy  force-reload;
'