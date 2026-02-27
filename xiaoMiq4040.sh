cd /home/runner/work/nc_test/nc_test/;
cd ./xiaomiqiu_x64_linux/;
chmod 0777 *;

#删除旧令牌
sed -i "/auth_token/d" /home/runner/work/nc_test/nc_test/xiaomiqiu_x64_linux/xiaomiqiu.conf;

#如果文件/home/liuhuan77.txt存在就追加新令牌
[ -f /home/liuhuan77.txt ]&&(echo "auth_token: "`cat /home/liuhuan77.txt` >>/home/runner/work/nc_test/nc_test/xiaomiqiu_x64_linux/xiaomiqiu.conf)

# http://xoks54uvph23.ngrok.xiaomiqiu123.top/  --> tcp60080
# https://9bdez39ksp30.ngrok.xiaomiqiu123.top/ --> tcp58080

(
(curl -s --connect-timeout 2 -m 4 http://xoks54uvph23.ngrok.xiaomiqiu123.top/|grep "location.origin")&&
    (
        [ -f /home/liuhuan77.txt ]&&(
        /tmp/tmux new -s xiaomiqiu64 -d;
        (sleep 1;
        /tmp/tmux send-keys -t xiaomiqiu64   'sh /home/runner/work/nc_test/nc_test/xiaomiqiu_x64_linux/xiaomiqiu_start.sh ' Enter
        ) &
        )
    )||( echo "14776-启动小米球失败"; )
)&

cd /tmp;