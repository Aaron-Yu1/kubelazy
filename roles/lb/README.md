lb
=========
这个角色用于部署集群的 load balance，是一个可选选项，只有使用多台 master 的情况下才需要。

该角色通过 haproxy 来实现 load balance，通过 keeplived 来实现 load balance 本身的高可用。

Requirements
------------

下载 Haproxy 和 Keepalive 软件包
```
wget https://www.haproxy.org/download/3.0/src/haproxy-3.0.11.tar.gz
wget https://www.keepalived.org/software/keepalived-2.3.2.tar.gz
```
注意：这里的软件包版本要和 roles/lb/vars/main.yml 文件中定义的版本一致。

Role Variables
--------------
