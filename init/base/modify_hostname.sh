#!/bin/bash
read -p  "请输入新的主机名：" pcname
hostnamectl  --static set-hostname  $pcname
hostnamectl  set-hostname  $pcname
