#!/bin/bash
# run217_k8_service_w_ep.sh
## \brief Go create the Service and the endpoint
## \see Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.
#
kubectl create -f endpoint-service.yaml && kubectl create -f k8s-endpoint.yaml

echo 'curl 10.105.232.226:8080'
echo 'Acess service like so.'
kubectl get svc | grep k8s-ep | awk '{ gsub(/\/TCP/, "", $5); print "curl " $3 ":" $5; }'
echo
echo 'SHUTDOWN PROCESS'
echo 'kubectl delete svc,ep k8s-ep'
