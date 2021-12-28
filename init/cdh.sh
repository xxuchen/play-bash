#!/bin/bash
# 修改主机名
sh ./base/modify_hostname.sh
# 添加host映射

# 关闭防火墙
sh ./base/firewalld_config.sh
# 配置免密登陆

# 禁用Selinux
sh ./base/selinux_config.sh
# 禁用IPV6
sh ./base/ipv6_config.sh
# 修改内核限制
sh ./base/limits_config.sh
# 关闭透明大页
sh ./base/bigpage_config.sh
# 配置静态IP

# 设置统一时区
sh ./base/zone_time_asia.sh
# 修改系统语言
sh ./base/LANG_config.sh
# 关闭swap
sh ./base/swap_config.sh
# 重启服务器


