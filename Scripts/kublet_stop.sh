#!/bin/bash
# kubelet_stop.sh
## \brief Kubernetes stop service command.
## \see Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.
#
echo "Must be super user!!!"
systemctl stop kubelet && systemctl disable kubelet
