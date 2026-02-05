cd /tmp;
mkdir /tmp/0img;
chmod 0777 /tmp/0img;


sudo bash -c "git clone https://github.com/invoke-ai/InvokeAI.git &
screen -dmS r;
screen -r r -p 0 -X stuff 'docker pull invokeai/invokeai;ll;';
screen -r r -p 0 -X stuff $'\n';

screen -r r -p 0 -X stuff 'docker run --device /dev/fb0:/dev/fb0 -it --privileged -p 9090:9090 -v /tmp/0img:/data/outputs/ --name ai invokeai/invokeai;';
screen -r r -p 0 -X stuff $'\n';

screen -r r -p 0 -X stuff \'docker run --device /dev/fb0:/dev/fb0 -it -v /tmp/0img:/data/outputs/ --privileged -p 9090:9090 --name ai invokeai/invokeai;\';
screen -r r -p 0 -X stuff $'\n';
"