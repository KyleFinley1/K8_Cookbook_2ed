#!/bin/bash
# run220_k8_nodeport_2_service.sh
## \brief Pod finds a service via environment variables or DNS lookup.
## \see Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.
#
kubectl create service externalname k8s-website --external-name
kubectl run my-centos --image=centos --restart=Never sleep 600
kubectl exec -it my-centos -- /bin/sh -c 'curl k8swebsite.default.svc.cluster.local '
kubectl get svc

echo 'SHUTDOWN PROCESS'
echo 'kubectl delete svc my-1st-centos'
echo 'kubectl delete svc my-2nd-centos'
