#!/bin/bash
# run214_k8_service_podname.sh
## \brief Command creates Kubernetes service provided an internet protocol address.
## \see Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.
#
kubectl run nginx-deployment --image=nginx --port=80 --replicas=2 --labels="env=dev,project=My-Happy-Web,role=frontend"
kubectl expose deployment nginx-deployment --port=8080 --target-port=80 --name="another-nginx-service" --selector="project=My-Happy-Web,role=frontend" --external-ip="192.168.122.102"

echo 'Acess service like so.'
# kubectl get svc | grep nginx-service | awk '{ gsub(/\/TCP/, "", $5); print "curl http:\\\\" $3 ":" $5; }'

echo 'Acess service like so.  Your IP will be different!'
echo 'curl 192.168.122.102:8080'

echo 'SHUTDOWN PROCESS'
echo 'kubectl delete svc,ep k8s-ep'
