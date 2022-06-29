#!/bin/bash
# run218_k8_service_w_affinty.sh
## \brief When layering services, one copies the settings of one service to another.
## \see Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.
#
kubectl expose svc another-nginx-service --port=8081 --target-port=80 --name=yet-another-nginx-service --session-affinity="ClientIP"
kubectl describe svc yet-another-nginx-service

echo 'SHUTDOWN PROCESS'
echo 'kubectl delete svc,ep k8s-ep'
echo
echo 'You should get an error!'
echo 'Error from server (NotFound): endpoints "k8s-ep" not found'
echo 'A service is an endpoint!"
