#!/bin/bash
# run225_k8_pod_w_nfs.sh
## \brief Pod finds a service via environment variables or DNS lookup.
## \see Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.
#
echo 'You must create the nfs server before using!  '

kubectl create -f 2-6-3_nfs.yaml

kubectl exec ubuntu touch /data-mount/sample
ls /tmp/data/sample

echo 'SHUTDOWN PROCESS'
echo 'kubectl delete pod ubuntu'
