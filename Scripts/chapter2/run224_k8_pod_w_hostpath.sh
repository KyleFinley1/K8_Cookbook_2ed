#!/bin/bash
# run224_k8_pod_w_hostpath.sh
## \brief Mounts the local folder on a node listed in hostpath e.g. /tmp/data.
## \see Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.
#
kubectl create -f 2-6-2_hostPath.yaml

kubectl exec ubuntu touch /data-mount/sample
ls /tmp/data/sample

echo 'SHUTDOWN PROCESS'
echo 'kubectl delete pod ubuntu'
