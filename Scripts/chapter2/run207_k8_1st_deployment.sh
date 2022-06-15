#!/bin/bash
# run207_k8_1st_deployment.sh
## \brief Create first Kubernetes deployment.
## \see Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.
#
kubectl run my-nginx --image=nginx:1.11.0 --port=80 --replicas=3

kubectl get deploy
kubectl get pods

echo 'SHUTDOWN PROCESS'
echo kubectl delete deploy my-nginx
echo kubectl delete pod my-nginx
