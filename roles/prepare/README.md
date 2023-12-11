prepare
=========
这个角色用于初始化操作系统，以便让系统满足部署 kubernetes 的最低需求。

在 modules.conf.j2 中定义 kubernetes 需要使用的模块。
在 k8s.conf.j2 文件中，定义了 kubernetes 所需要的 sysctl 参数，以及一些系统优化的参数。

该 role 包含的 task：
- 配置所有节点的 /etc/hosts 文件
- 安装基础环境所需要的软件包
- 关闭 swap
- 复制模块文件，并加载模块
- 复制 sysctl 参数文件，并加载
- 配置时区和时间同步
- 创建 kubernetes 目录

Requirements
------------
此角色需要所有节点能够访问到 Internet。

Role Variables
--------------
该角色包含两个变量：
- TIMEZONE：设置所有节点的主机时区，可以通过 timedatectl list-timezones 命令获取所有时区
- NTP_SERVERS：是一个数组变量，用于指定 chrony 配置文件中的时间源服务器
