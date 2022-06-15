#!/bin/bash
# run229_k8_pod_w_downward_api_container.sh
## \brief 
## \see Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.
#
kubectl create -f 2-6-5_downward_api_continer.yaml

echo docker inspect <container name>
echo
echo 'SHUTDOWN PROCESS'
echo 'kubectl delete pod downwardapi-container'
