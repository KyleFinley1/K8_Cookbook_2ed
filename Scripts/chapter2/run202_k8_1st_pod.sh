i#!/bin/bash
# run202_k8_1st_pod.sh
## \brief Start first Kubernetes pod requires one to create my-first-pod yaml file!
## \see Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.
#
# kubectl create my-first-nginx --image=nginx --replicas=2 --port=80 deployment "my-first-nginx" created
# kubectl  run   my-first-nginx --image=nginx --replicas=2 --port=80 deployment "my-first-nginx" created
kubectl create -f my-first-pod.yaml
kubectl exec  my-first-pod -it -c my-centos -- /bin/bash

kubectl get pods
kubectl describe pod my-first-nginx

echo 'SHUTDOWN PROCESS'
echo kubectl  delete  pod        my-first-nginx
