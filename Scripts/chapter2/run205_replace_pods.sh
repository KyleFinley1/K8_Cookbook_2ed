#!/bin/bash
# run205_replace_pods.sh
## \brief Demonstrates replica sets replace pods.
## \see Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.
#
kubectl create -f my-first-replicaset.yaml replicaset.extensions "my-first-replicaset" created
kubectl get rs,pod

echo 'kubectl delete pod <pod_id>'
echo 'kubectl get rs,pod'
echo 'kubectl describe <pod_id>'
echo 'kubectl get rs,pod'

echo 'SHUTDOWN PROCESS'
echo 'time kubectl delete rs my-first-replicaset && kubectl get pod'
