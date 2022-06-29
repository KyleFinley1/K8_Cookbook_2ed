#!/bin/bash
# run210_apply_deployment.sh
## \brief Use undo to demostrate pod backup and restore Kubernetes deployments.
## \see Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.
#
kubectl apply -f deploy_1.12.2.yaml --record

kubectl describe deploy my-nginx
kubectl get deploy
kubectl get pods
kubectl get rs

kubectl rollout history deployment my-nginx

kubectl rollout undo deployment my-nginx --to-revision=2

kubectl get pods
kubectl get rs

echo 'SHUTDOWN PROCESS'
echo 'kubectl delete deploy my-nginx'
echo 'kubectl delete pod my-nginx'
