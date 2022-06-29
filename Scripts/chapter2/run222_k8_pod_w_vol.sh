#!/bin/bash
# run222_k8_pod_w_vol.sh
## \brief Pod finds a service via environment variables or DNS lookup.
## \see Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.
#
kubectl create -f 2-6-1_emptyDir.yaml

kubectl describe pod ubuntu | grep Node

echo 'docker inspect <container ID>'
echo 'ls /var/lib/kubelet/pods/<id>/volumes/kubernetes.io~emptydir/<volumeMount name> to /data-mount'

echo 'SHUTDOWN PROCESS'
echo 'kubectl delete pod ubuntu'
