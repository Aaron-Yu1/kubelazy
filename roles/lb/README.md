lb
=========
这个角色用于部署集群的 load balance，是一个可选选项，只有使用多台 master 的情况下才需要。

该角色通过 haproxy 来实现 load balance，通过 keeplived 来实现 load balance 本身的高可用。

Requirements
------------


Role Variables
--------------
这个角色有两个变量 USER 和 PASSWORD，这两个变量对应的用户名和密码用于访问 haproxy 的状态页面。