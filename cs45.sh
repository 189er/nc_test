
sudo mkdir -pv /tmp/cs45/;
sudo unzip   /home/runner/work/nc_test/nc_test/tool/Z.zip  -d /tmp/cs45/;


cd /tmp/cs45/;
keytool -keystore ./cobaltstrike.store -storepass 123456 -keypass 123456 -genkey -keyalg RSA -alias cobaltstrike -validity 360 -dname "CN=*.microsoft.com, OU=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=WA, C=US" ;



(
gunzip  /home/runner/work/nc_test/nc_test/tool/ecapture.gz;



sudo bash -c "
alias tmux='/tmp/tmux.elf -u'
tmux new -s cs45 -d  ;
tmux send -t cs45 'cd /tmp;echo /bin/ts45;cat /bin/ts45' ENTER ;

cat<<EOF>/bin/ts45
cd /tmp/cs45/;
export HOME=/tmp/cs45/;
ip addr  add 192.168.50.1/24 dev eth0
java -XX:ParallelGCThreads=4 -Dcobaltstrike.server_port=50050 -Dcobaltstrike.server_bindto=0.0.0.0 -Djavax.net.ssl.keyStore=./cobaltstrike.store -Djavax.net.ssl.keyStorePassword=123456  -server -XX:+AggressiveHeap -XX:+UseParallelGC -classpath ./cobaltstrike.jar -javaagent:CSAgent.jar=f38eb3d1a335b252b58bc2acde81b542 -Duser.language=en server.TeamServer  192.168.50.1  123456
EOF



cat<<EOF>/bin/cc45
cd /tmp/cs45/;
export HOME=/tmp;
java -XX:ParallelGCThreads=4 -XX:+AggressiveHeap -XX:+UseParallelGC -javaagent:CSAgent.jar=f38eb3d1a335b252b58bc2acde81b542 -Duser.language=en -jar cobaltstrike.jar
EOF

chmod 0777 /bin/ts45 /bin/cc45;


chown 0.0 /home/runner/work/nc_test/nc_test/tool/ecapture;
chmod 0777 /home/runner/work/nc_test/nc_test/tool/ecapture;
ln -s  /home/runner/work/nc_test/nc_test/tool/ecapture /usr/bin/ecapture;

"


)&

