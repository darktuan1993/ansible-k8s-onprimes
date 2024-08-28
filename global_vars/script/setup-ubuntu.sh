apt-get update && apt-get upgrade -y
apt-get install -y vim
apt install curl apt-transport-https vim git nfs-common wget software-properties-common lsb-release ca-certificates -y
swapoff -a; sed -i '/swap/d' /etc/fstab
modprobe overlay
modprobe br_netfilter
echo '1' > /proc/sys/net/bridge/bridge-nf-call-iptables
echo 'br_netfilter' > /etc/modules-load.d/k8s.conf

VERSION="v1.28"
VERSION_k8s="1.28"
VERSION_PATCH='0-1.1'

echo $VERSION

{
cat << EOF | tee /etc/sysctl.d/kubernetes.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
net.ipv4.ip_forward = 1
EOF
}