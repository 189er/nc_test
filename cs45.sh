
sudo mkdir -pv /tmp/cs45/;
sudo unzip   /home/runner/work/nc_test/nc_test/tool/Z.zip  -d /tmp/cs45/;

(
gunzip  /home/runner/work/nc_test/nc_test/tool/ecapture.gz;
sudo bash -c "
alias tmux='/tmp/tmux.elf -u'
tmux new -s cs45 -d  ;
tmux send -t cs45 'cd /tmp' ENTER ;

cat<<EOF>/bin/ts
cd /tmp/cs;
java -XX:ParallelGCThreads=4 -Dcobaltstrike.server_port=8001 -Dcobaltstrike.server_bindto=0.0.0.0 \
-Djavax.net.ssl.keyStore=./cobaltstrike.store -Djavax.net.ssl.keyStorePassword=admin888  -server -XX:+AggressiveHeap -XX:+UseParallelGC \
-classpath ./cobaltstrike.jar \
-javaagent:CSAgent.jar=f38eb3d1a335b252b58bc2acde81b542 -Duser.language=en server.TeamServer  127.1.2.3 admin888
EOF

chmod 0777 /bin/ts;

ln -s  /home/runner/work/nc_test/nc_test/tool/ecapture /bin/ecapture;

"


)&

