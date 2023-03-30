通过 Ansible 部署 Kubernetes
  

支持的操作系统：
  Ubuntu 20.04

Kubernetes 版本：
  1.26.1

etcd 版本
  3.5.5

containerd 版本
  1.6.14

需要使用 root 用户运行，并配置 ssh 免密登录

需要更改 hosts， 添加自己的服务器地址
更改 network.yml 以及 dns.yml 文件中的 hosts，指定为自己 master 的服务器地址

需要下载 etcd, kubernetes 和containerd 二进制文件,并将二进制文件复制到 bin 目录。
```bash
https://mirrors.huaweicloud.com/etcd/v3.5.5/etcd-v3.5.5-linux-amd64.tar.gz
wget https://dl.k8s.io/v1.26.1/kubernetes-server-linux-amd64.tar.gz
wget https://github.com/containerd/containerd/releases/download/v1.6.14/cri-containerd-cni-1.6.14-linux-amd64.tar.gz
```
注意：Containerd 是所有目录文件，不单单是二进制文件。

目前只支持 calico 作为网络插件，coredns 作为群集内部的 DNS。

如果安装 harbor, 同样也需要下载 harbor 的二进制文件，并解压到 bin 目录。
```bash
https://github.com/goharbor/harbor/releases/download/v2.6.3/harbor-offline-installer-v2.6.3.tgz
``

运行顺序：
1. change_hosts.yml
2. change_dns.yml
3. timezone.yml
4. certs.yml
5. etcd.yml
6. master.yml
7. ha.yml
8. node.yml
9. networl.yml
10. dns.yml

可选项：
1. harbor.yml

未完，待续...
