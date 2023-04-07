通过 Ansible 部署 Kubernetes
  

支持的操作系统：
  Ubuntu 20.04

Kubernetes 版本：
  1.26.1

etcd 版本
  3.5.5

containerd 版本
  1.6.14

### 快速开始
需要使用 root 用户运行，并配置 ssh 免密登录
需要更改 hosts， 添加自己的服务器地址

```bash
git clone https://github.com/Aaron-Yu1/kubelazy.git

cd kubelazy/bin
etcd_version=v3.5.5
wget https://github.com/coreos/etcd/releases/download/${etcd_version}/etcd-${etcd_version}-linux-amd64.tar.gz
tar -zxf etcd-${etcd_version}-linux-amd64.tar.gz

k8s_version=v1.26.1
wget https://dl.k8s.io/${k8s_version}/kubernetes-server-linux-amd64.tar.gz
tar -zxf kubernetes-server-linux-amd64.tar.gz

runtime_version=1.6.14
wget https://github.com/containerd/containerd/releases/download/v${runtime_version}/cri-containerd-cni-${runtime_version}-linux-amd64.tar.gz
tar -zxf cri-containerd-cni-${runtime_version}-linux-amd64.tar.gz

cd ..

ansible-playbook kubelazy.yml

```

目前只支持 calico 作为网络插件，coredns 作为群集内部的 DNS。

如果安装 harbor, 同样也需要下载 harbor 的二进制文件，并解压到 bin 目录。
```bash
https://github.com/goharbor/harbor/releases/download/v2.6.3/harbor-offline-installer-v2.6.3.tgz

ansible-playbook harbor.yml
```

未完，待续...
