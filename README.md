本工程包含收集到的一些常用shell。

如CDH安装前的初始化脚本、新搭建服务器的优化脚本等，后续还会持会更新、修改。

包含脚本列表：

├─init
│  │  cdh.sh	# CDH安装前初始化脚本
│  │
│  └─base
│          bigpage_config.sh	# 透明大页设置
│          firewalld_config.sh	# 防火墙设置
│          ipv6_config.sh	# IPV6设置
│          LANG_config.sh	# 系统语言设置
│          limits_config.sh	# 内核限制设置
│          modify_hostname.sh	# 修改主机名
│          selinux_config.sh	# 禁用Selinux
│          swap_config.sh	# 关闭透明大页
│          zone_time_asia.sh	# 设置统一时区
│
└─ssh-batch-copy
        ssh-copy.sh	# 批量创建免秘登陆