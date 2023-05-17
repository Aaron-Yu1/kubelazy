prepare
=========
这个角色用于初始化操作系统，以便让系统满足部署 kubernetes 的最低需求。

Requirements
------------
此角色需要所有节点能够访问到 Internet。

Role Variables
--------------
此角色需要定义变量“TIMEZONE", 此变量用于设定所有节点主机的时区，可以通过 “timedatectl list-timezones” 命令查看所有时区。

