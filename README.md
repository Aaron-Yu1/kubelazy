通过 Ansible 部署 Kubernetes
  

支持的操作系统：  
- Ubuntu 20.04

Kubernetes 版本：  
- 1.26

etcd 版本:  
- 3.5.6

containerd 版:  
- 1.6.14

### 快速开始
需要使用 root 用户运行，并配置 ssh 免密登录。   
需要更改 inventory 目录下的hosts， 添加自己的服务器地址。以及 config 目录下的 config.yml 文件，该文件中定义了安装过程中需要的变量。
关于软件版本等 role 本身相关的变量，可以在各个觉得的var 目录下的main.yml 文件中查看。

```bash
git clone https://github.com/Aaron-Yu1/kubelazy.git

cd kubelazy

mkdir bin

cd bin

# 下载 cfssl
wget https://github.com/cloudflare/cfssl/releases/download/v1.6.3/cfssljson_1.6.3_linux_amd64 -O cfssljson
wget https://github.com/cloudflare/cfssl/releases/download/v1.6.3/cfssl_1.6.3_linux_amd64 -O cfssl
chmod +x cfss*

# 下载 etcd
wget https://github.com/etcd-io/etcd/releases/download/v3.5.6/etcd-v3.5.6-linux-amd64.tar.gz
tar -zxf etcd-v3.5.6-linux-amd64.tar.gz

# 下载 kubernetes
wget https://dl.k8s.io/v1.26.4/kubernetes-server-linux-amd64.tar.gz
tar -zxf kubernetes-server-linux-amd64.tar.gz

下载runtime（containerd，目前只支持 containerd）
wget https://github.com/containerd/containerd/releases/download/v1.6.19/cri-containerd-cni-1.6.19-linux-amd64.tar.gz
tar -zxf cri-containerd-cni-1.6.19-linux-amd64.tar.gz

cd ..

ansible-playbook kubelazy.yml

```

目前只支持 calico 作为网络插件，coredns 作为群集内部的 DNS。

如果安装 harbor, 同样也需要下载 harbor 的二进制文件，并解压到 bin 目录。
```bash
cd bin

wget https://github.com/goharbor/harbor/releases/download/v2.5.6/harbor-offline-installer-v2.5.6.tgz

# 只安装 harbor。
# 部署完成后，需要更改 runtime 的配置，以便 kubernetes 可以从 harbor 下载镜像。
ansible-playbook kubelazy.yml --tags "install_harbor"
```

安装过程说明：  
- [初始化操作系统](https://github.com/Aaron-Yu1/kubelazy/tree/main/roles/prepare/README.md)

未完，待续...
