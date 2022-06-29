#!/bin/bash
# run223_k8_pod_w_vol_mnt.sh
## \brief Pod finds a service via environment variables or DNS lookup.
## \see Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.
#
kubectl create -f 2-6-1_emptyDir_mem.yaml

kubectl exec ubuntu df | grep tmpfs

echo 'SHUTDOWN PROCESS'
echo 'kubectl delete pod ubuntu'
