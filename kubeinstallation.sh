setenforce 0
sed -i --follow-symlinks 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/sysconfig/selinux
firewall-cmd --permanent --add-port=6443/tcp
 firewall-cmd --permanent --add-port=2379-2380/tcp
 firewall-cmd --permanent --add-port=10250/tcp
 firewall-cmd --permanent --add-port=10251/tcp
 firewall-cmd --permanent --add-port=10252/tcp
 firewall-cmd --permanent --add-port=10255/tcp
 firewall-cmd –reload
 modprobe br_netfilter
 echo '1' > /proc/sys/net/bridge/bridge-nf-call-iptables
 yum install kubeadm docker -y 
 systemctl enable kubelet
 systemctl start kubelet
 systemctl enable docker
 systemctl start docker
