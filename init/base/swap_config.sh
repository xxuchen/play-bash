#!/bin/bash

#替换
sed -i 's/vm.swappiness = 0/vm.swappiness = 1/g'  /etc/sysctl.conf
#追加
echo 'vm.max_map_count=655360' >> /etc/sysctl.conf
#生效
/sbin/sysctl -p
