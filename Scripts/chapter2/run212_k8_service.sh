#!/bin/bash
# run212_k8_service.sh
## \brief Command creates first Kubernetes service.
## \see Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.
#
kubectl run nginx-pod --image=nginx --port=80 --restart="Never" --labels="project=My-Happy-Web,role=frontend,env=test"
kubectl expose pod nginx-pod --port=8080 --target-port=80 --name="nginx-service"

kubectl describe svc nginx-service

echo 'Acess service like so.'
kubectl get svc | grep nginx-service | awk '{ gsub(/\/TCP/, "", $5); print "curl " $3 ":" $5; }'

echo 'Acess service like so.  Your IP will be different!'
echo 'curl http:\\10.96.107.213:8080'
echo
echo 'SHUTDOWN PROCESS'
echo 'kubectl delete svc,ep k8s-ep'
