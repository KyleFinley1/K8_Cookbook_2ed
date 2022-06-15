#!/bin/bash
# kubelet_start.sh
## \brief Kubernetes start service command.
## \see Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.
#
echo "Must be super user!!"
systemctl enable kubelet && systemctl start kubelet
systemctl -l status kubelet
