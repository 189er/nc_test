cd /home/runner/work/nc_test/nc_test/wub;
chmod 0777 ./wub;


#curl -L -o web.zip "https://ghproxy.com/https%3A%2F%2Fgithub.com%2FXTLS%2FXray-core%2Freleases%2Fdownload%2Fv1.7.5%2FXray-linux-64.zip"
#./busybox unzip -q ./web.zip -d  .;
# mv ./xray ./wub; rm README.md  LICENSE web.zip;


(setsid ./wub -c ./vless.json & )


# sudo bash -c "screen -dmS t;
# screen -r t -p 0 -X stuff 'docker pull v2ray/official;ll /etc/v2ray;';
# screen -r t -p 0 -X stuff $'\n';
# screen -r t -p 0 -X stuff $'\n';
# screen -r t -p 0 -X stuff 'docker run -it --name v2ray5 -v /etc/v2ray:/etc/v2ray -p 43389:43389 v2ray/official v2ray -config=/etc/v2ray/v2ray.json;';
# screen -r t -p 0 -X stuff $'\n';
# "