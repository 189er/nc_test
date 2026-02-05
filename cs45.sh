sudo mkdir -pv /tmp/cs45/;
sudo unzip   /home/runner/work/nc_test/nc_test/tool/Z.zip  -d /tmp/cs45/;

cd /tmp;


(
gunzip  /home/runner/work/nc_test/nc_test/tool/ecapture.gz;

sudo bash <<'EO1F'
#cd /tmp/cs45/;
#rm ./cobaltstrike.store;
#keytool -keystore ./cobaltstrike.store -storepass 12345678 -keypass 12345678 -genkey -keyalg RSA -alias microsoft -validity 360 -dname 'CN=*.microsoft.com, OU=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=WA, C=US' ;

cd /tmp;

alias tmux="/tmp/tmux.elf -u "
tmux new -s cs45 -d  ;
tmux send -t cs45 "cd /tmp;ls -al /bin/ts45;cat /bin/ts45;. /bin/ts45; " ENTER ;

cat<<EO2F>/bin/ts45
cd /tmp/cs45/;
export HOME=/tmp/cs45/;
ip addr  add 192.168.50.1/24 dev eth0;
echo java -XX:ParallelGCThreads=4 -Dcobaltstrike.server_port=50050 -Dcobaltstrike.server_bindto=0.0.0.0 -Djavax.net.ssl.keyStore=./cobaltstrike.store -Djavax.net.ssl.keyStorePassword=123456  -server -XX:+AggressiveHeap -XX:+UseParallelGC -classpath ./cobaltstrike.jar -javaagent:CSAgent.jar=f38eb3d1a335b252b58bc2acde81b542 -Duser.language=en server.TeamServer  192.168.50.1  12345678
"java" -XX:ParallelGCThreads=4 -Dcobaltstrike.server_port=9090 -Dcobaltstrike.server_bindto=0.0.0.0 -Djavax.net.ssl.keyStore=./cobaltstrike.store -Djavax.net.ssl.keyStorePassword=admin888  -server -XX:+AggressiveHeap -XX:+UseParallelGC -classpath ./cobaltstrike.jar -javaagent:CSAgent.jar=f38eb3d1a335b252b58bc2acde81b542 -Duser.language=en -Ddebug=true -Ddebug.level=6 -Ddebug.file=/tmp/cs45/teamserver.log server.TeamServer 192.168.50.1  admin888
EO2F



cat<<EO3F>/bin/cc45
cd /tmp/cs45/;
export HOME=/tmp;
java -XX:ParallelGCThreads=4 -XX:+AggressiveHeap -XX:+UseParallelGC -javaagent:CSAgent.jar=f38eb3d1a335b252b58bc2acde81b542 -Duser.language=en -jar cobaltstrike.jar
EO3F

chmod 0777 /bin/ts45 /bin/cc45;


chown 0.0 /home/runner/work/nc_test/nc_test/tool/ecapture;
chmod 0777 /home/runner/work/nc_test/nc_test/tool/ecapture;
ln -s  /home/runner/work/nc_test/nc_test/tool/ecapture /usr/bin/ecapture;
EO1F


)&


cd /tmp;

