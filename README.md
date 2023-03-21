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

需要下载 etcd, kubernetes 和containerd 二进制文件
```bash
https://mirrors.huaweicloud.com/etcd/v3.5.5/etcd-v3.5.5-linux-amd64.tar.gz
wget https://dl.k8s.io/v1.26.1/kubernetes-server-linux-amd64.tar.gz
wget https://github.com/containerd/containerd/releases/download/v1.6.14/cri-containerd-cni-1.6.14-linux-amd64.tar.gz
```


运行顺序：
1. change_hosts.yml
2. timezone.yml
3. certs.yml
4. etcd.yml
5. kubeapi.yml
6. kubecontroler.yml
7. kubescheduler.yml
8. ha.yml
9. node.yml

未完，待续...
