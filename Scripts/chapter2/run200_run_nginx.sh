#!/bin/bash
# run200_run_ngix.sh
## \brief First run a Kubernetes deployment with 2 replicas for the image nginx and expose the container port 80.
## \see Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.
#
kubectl create my-first-nginx --image=nginx --replicas=2 --port=80 deployment "my-first-nginx" created

curl 10.1.150.53:80
kubectl get pods
kubectl describe service    my-first-nginx

curl -L http://localhost:80

echo 'SHUTDOWN PROCESS'
echo kubectl  delete  deployment my-first-nginx
echo kubectl  delete  service    my-first-nginx
echo kubectl  delete  pod        my-first-nginx
