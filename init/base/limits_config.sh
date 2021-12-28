#!/bin/bash

# 判断是否有备份文件，没有则备份。
if [ ! -f "/etc/security/limits.conf.bak" ]; then
    cp /etc/security/limits.conf /etc/security/limits.conf.bak
fi

cat > /etc/security/limits.conf << ABC
* soft nofile  128000
* hard nofile  128000
* soft nproc   65535
* hard nproc   65535
* soft memlock unlimited
* hard memlock unlimited
ABC
seleep 1

# 判断是否有备份文件，没有则备份。
if [ ! -f "/etc/systemd/system.conf.bak" ]; then
    cp /etc/systemd/system.conf  /etc/systemd/system.conf.bak
fi

cat > /etc/systemd/system.conf << EOF
DefaultLimitNOFILE=128000
DefaultLimitNPROC=65535
DefaultLimitMEMLOCK=infinity
EOF
sleep 1
