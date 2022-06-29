#!/bin/bash
# run209_record_deployment.sh
## \brief Use record and rollout to demostrate pod backup and restore after updated Kubernetes deployments go awry.
## \see Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.
#
kubectl create -f deploy.yaml --save-config --record

kubectl get deploy

kubectl get pods
kubectl get rs

kubectl rollout history deployment my-nginx

kubectl get pods
kubectl get rs

echo 'SHUTDOWN PROCESS'
echo kubectl delete deploy my-nginx
echo kubectl delete pod my-nginx
