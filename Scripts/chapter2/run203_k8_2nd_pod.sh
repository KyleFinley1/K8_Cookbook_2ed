#!/bin/bash
# run203_k8_2nd_pod.sh
## \brief Start second Kubernetes pod requires one to create my-second-pod yaml file!
## \see Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.
#
# kubectl create my-second-nginx --image=nginx --replicas=2 --port=80 deployment "my-second-nginx" created
# kubectl  run   my-second-nginx --image=nginx --replicas=2 --port=80 deployment "my-second-nginx" created
kubectl create -f my-second-pod.yaml
kubectl exec  my-second-pod -it -c my-centos -- /bin/bash

kubectl get pods
kubectl describe pod my-second-nginx

echo 'SHUTDOWN PROCESS'
echo kubectl delete pod my-second-nginx
