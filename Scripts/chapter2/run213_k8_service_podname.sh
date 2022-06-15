#!/bin/bash
# run213_k8_service_podname.sh
## \brief Command creates first Kubernetes service.
## \see Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.
#
kubectl run nginx-no-label --image=nginx --port=80 --restart="Never" && kubectl expose pod nginx-no-label

kubectl describe svc nginx-no-label

kubectl run another-nginx-no-label --image=nginx --port=80 --restart="Never" --expose

kubectl describe svc another-nginx-no-label

echo 'Oberserve the seletor inherited the dummy label.'
echo
echo 'SHUTDOWN PROCESS'
echo 'kubectl delete svc,ep k8s-ep'
