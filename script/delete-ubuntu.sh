# unset KUBECONFIG
kubeadm reset --force
rm -rf ~/.kube
rm -rf crictl-v1.28.0-linux-amd64.tar.gz*
rm -rf wazuh-agent*
# rm -rf /etc/cni/net.d
# rm -rf /var/lib/cni/
# rm -rf /var/run/kubernetes/
# docker system prune -af
# systemctl stop docker
# apt-get remove --purge docker-ce docker-ce-cli containerd.io
# systemctl stop containerd
# apt-get remove --purge containerd
# apt-get remove --purge kubeadm kubectl kubelet kubernetes-cni kube*
# rm -rf ~/.kube
# rm -rf /etc/kubernetes/
# rm -rf /var/lib/etcd/
# rm -rf /var/lib/kubelet/
# rm -rf /var/lib/dockershim
# rm -rf /etc/systemd/system/kubelet.service.d
# rm -rf /etc/systemd/system/kubelet.service
# rm -rf /usr/bin/kube*
# rm -rf /usr/local/bin/kube*
