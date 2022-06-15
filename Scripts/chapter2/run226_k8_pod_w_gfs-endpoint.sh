#!/bin/bash
# run226_k8_pod_w_gfs-endpoint.sh
## \brief Similar to NFS, Creates Glusterfs pod as a bridge between two gfs servers.
## \see Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.
#
echo 'You must create the glusterfs server before using!  '
echo 'Try mount -t glusterfs <glusterfs-server>:/<volume name> <local mount point>'

kubectl create -f 2-6-4_gfs-endpoint.yaml

kubectl get endpoints

echo 'SHUTDOWN PROCESS'
echo 'kubectl delete pod ubuntu'
