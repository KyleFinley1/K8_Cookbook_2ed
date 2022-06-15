#!/bin/bash
# run206_standalone_pod.sh
## \brief Start a standalone pod that is deleted with the group.
## \see Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.
#
kubectl run standalone-pod --image=centos --labels="project=My-Happy-Web,role=frontend,env=test" --restart=Never --command sleep 3600
kubectl create -f my-first-replicaset.yaml

kubectl get pod -L project -L role -L env
kubectl describe pod standalone-pod

echo 'SHUTDOWN PROCESS'
echo kubectl delete rs my-first-replicaset && kubectl get pod
