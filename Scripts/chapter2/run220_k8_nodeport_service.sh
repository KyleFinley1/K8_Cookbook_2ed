#!/bin/bash
# run220_k8_nodeport_2_service.sh
## \brief Pod finds a service via environment variables or DNS lookup.
## \see Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.
#
kubectl create service nodeport my-nginx --tcp=8080:80

kubectl describe svc my-nginx

kubectl run test-nodeport --image=nginx --labels="app=my-nginx"


echo 'SHUTDOWN PROCESS'
echo 'kubectl delete svc my-nginx'
echo 'kubectl delete pod '
echo 'kubectl delete pod test-nodeport'
kubectl get svc | grep k8s-ep | awk '{ gsub(/\/TCP/, "", $5); print "curl " $3 ":" $5; }'
