#!/bin/bash
## \file run208_update.sh
## \brief Updates Kubernetes deployment.
## \see Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.
#
kubectl run my-nginx --image=nginx:1.11.0 --port=80 --replicas=3

kubectl get deploy
kubectl get pods

kubectl set image deployment my-nginx my-nginx=nginx:1.12.0 --record

kubectl get deploy
kubectl get pods
kubectl describe deploy my-nginx
kubectl rollout history deployment my-nginx

echo 'SHUTDOWN PROCESS'
echo kubectl delete deploy my-nginx
