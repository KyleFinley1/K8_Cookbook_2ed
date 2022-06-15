#!/bin/bash
# run228_k8_pod_w_downward_api.sh
## \brief 
## \see Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.
#
kubectl create -f 2-6-5_downward_api.yaml

kubectl describe pod downwardapi
kubectl exec downwardapi cat /data-mount/metadata
echo 'you should be able to see env="example" presents'
echo
echo 'SHUTDOWN PROCESS'
echo 'kubectl delete pod downwardapi'
