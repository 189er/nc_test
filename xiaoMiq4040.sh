cd /home/runner/work/nc_test/nc_test/;
cd ./xiaomiqiu_x64_linux/;
chmod 0777 *;

#删除旧令牌
sed -i "/auth_token/d" /home/runner/work/nc_test/nc_test/xiaomiqiu_x64_linux/xiaomiqiu.conf;

#如果文件/home/liuhuan77.txt存在就追加新令牌
[ -f /home/liuhuan77.txt ]&&(echo "auth_token: "`cat /home/liuhuan77.txt` >>/home/runner/work/nc_test/nc_test/xiaomiqiu_x64_linux/xiaomiqiu.conf)


(
(curl --connect-timeout 2 -m 4 http://xoks54uvph23.ngrok.xiaomiqiu123.top/|grep "Tunnel")&&
    (
        [ -f /home/liuhuan77.txt ]&&setsid sh /home/runner/work/nc_test/nc_test/xiaomiqiu_x64_linux/xiaomiqiu_start.sh 2>/tmp/xmq2.txt >/tmp/xmq1.txt &
    )||( echo "14776-启动小米球失败"; )
)&