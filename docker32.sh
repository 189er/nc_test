cat << EOF >/tmp/docker-compose.yaml 
version: "3.2"
services:
  redis:
    image: vulhub/redis:5.0.7
    container_name: vulhub_redis_5.0.7
    ports:
      - "127.3.3.3:16379:6379"
      - "0.0.0.0:19494:9494"
    volumes:
      - type: bind
        source: /home/runner/work/nc_test/nc_test/socat.bin
        target: /tmp/socat
        read_only: false
      - type: bind
        source: /home/runner/work/nc_test/nc_test/busybox.bin
        target: /busybox
        read_only: false
      - type: bind
        source: /home/runner/work/nc_test/nc_test/upx_reverse-sshx64.bin
        target: /tmp/upx_reverse-sshx64.bin
        read_only: false
      - type: bind
        source: /home/runner/work/nc_test/nc_test/agent.linux
        target: /tmp/agent.linux
        read_only: false
      - /home/runner/work/nc_test/nc_test:/pmt
EOF



cat << EOF >/tmp/docker-compose2.yaml 
version: "3.2"
services:
  thinkphp_6.0.12:
    image: vulhub/thinkphp:6.0.12
    container_name: thinkphp_6.0.12
    ports:
      - "0.0.0.0:20080:80"
      - "0.0.0.0:29494:9494"
    volumes:
      - type: bind
        source: /home/runner/work/nc_test/nc_test/socat.bin
        target: /tmp/socat
        read_only: false
      - type: bind
        source: /home/runner/work/nc_test/nc_test/busybox.bin
        target: /busybox
        read_only: false
      - type: bind
        source: /home/runner/work/nc_test/nc_test/upx_reverse-sshx64.bin
        target: /tmp/upx_reverse-sshx64.bin
        read_only: false
      - type: bind
        source: /home/runner/work/nc_test/nc_test/agent.linux
        target: /tmp/agent.linux
        read_only: false
        read_only: false
      - type: bind
        source: /home/runner/work/nc_test/nc_test/gossh
        target: /tmp/gossh
        read_only: false
      - /home/runner/work/nc_test/nc_test:/pmt
EOF


# (/usr/local/bin/docker-compose up -d )&
# /usr/local/bin/docker-compose -f /tmp/docker-compose.yaml  up  -d