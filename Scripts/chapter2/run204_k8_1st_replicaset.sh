#!/bin/bash
# run204_k8_1st_replicaset.sh
## \brief First replica set requires one to create my-first-replicaset yaml file!
## \see Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.
#
kubectl create -f my-first-replicaset.yaml

kubectl describe rs my-first-replicaset

echo 'kubectl edit rs my-first-replicaset'

echo 'SHUTDOWN PROCESS'
echo 'time kubectl delete rs my-first-replicaset && kubectl get pod'
