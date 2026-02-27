cd /home/runner/work/nc_test/nc_test/wub;
chmod 0777 ./wub;


#curl -L -o web.zip "https://ghproxy.com/https%3A%2F%2Fgithub.com%2FXTLS%2FXray-core%2Freleases%2Fdownload%2Fv1.7.5%2FXray-linux-64.zip"
#./busybox unzip -q ./web.zip -d  .;
# mv ./xray ./wub; rm README.md  LICENSE web.zip;


#(setsid ./wub -c ./vless.json & )


sudo bash -c "screen -dmS wub;
screen -r wub -p 0 -X stuff './wub -c ./trojan-ws-no-sec.json;';
screen -r wub -p 0 -X stuff $'\n';
screen -r wub -p 0 -X stuff $'\n';
screen -r wub -p 0 -X stuff $'\n';
"&

#screen -r test -p 0 -X stuff 'unset LANG ;';
#screen -r test -p 0 -X stuff 'unset HOME ;unset USER ; unset  LOGNAME ;';
#screen -r test -p 0 -X stuff $'\n';

sudo bash -c "screen -s /bin/bash -dmS test -U;
screen -U -r test -p 0 -X stuff $'\n\n';
screen -U -r test -p 0 -X stuff $'cd /home/runner/work/nc_test/nc_test/tool;sh /root/.bash_profile;\n';
" &


#sudo bash -c "screen -dmS t2est;screen -r t2est -p 0 -X stuff $'\n';"&

#echo -e "defencoding UTF-8\nencoding UTF-8 " > /root/.screenrc

sudo bash -c "screen -dmS so;
screen -r so -p 0 -X stuff '../socat.bin udp4-l:60514,fork,reuseaddr   -';
screen -r so -p 0 -X stuff $'\n';
screen -r so -p 0 -X stuff $'\n';
screen -r so -p 0 -X stuff $'\n';
"&


cd /tmp;