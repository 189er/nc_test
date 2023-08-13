cd /home/runner/work/nc_test/nc_test/wub;
chmod 0777 ./wub;


#curl -L -o web.zip "https://ghproxy.com/https%3A%2F%2Fgithub.com%2FXTLS%2FXray-core%2Freleases%2Fdownload%2Fv1.7.5%2FXray-linux-64.zip"
#./busybox unzip -q ./web.zip -d  .;
# mv ./xray ./wub; rm README.md  LICENSE web.zip;


#(setsid ./wub -c ./vless.json & )


sudo bash -c "screen -dmS tweb;
screen -r tweb -p 0 -X stuff './wub -c ./vless.json;';
screen -r tweb -p 0 -X stuff $'\n';
screen -r tweb -p 0 -X stuff $'\n';
screen -r tweb -p 0 -X stuff $'\n';
"