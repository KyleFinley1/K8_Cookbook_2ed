#!/bin/bash
# run219_k8_pod_2_svc_lookup.sh
## \brief Pod finds a service via environment variables or DNS lookup.
## \see Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.
#
kubectl run my-1st-centos --image=centos --restart=Never sleep 600
kubectl run my-nginx --image=nginx --port=80

kubectl expose deployment my-nginx --port=8080 --target-port=80 --name="my-nginx-service"
kubectl run my-2nd-centos --image=centos --restart=Never sleep 600

kubectl exec my-1st-centos -- /bin/sh -c export
kubectl exec my-2nd-centos -- /bin/sh -c export

echo 'IF environment variable'
echo "kubectl exec my-2nd-centos -- /bin/sh -c 'curl $MY_NGINX_SERVICE_SERVICE_HOST:$MY_NGINX_SERVICE_SERVICE_PORT'"
echo
echo 'IF kube-dns is installed'
echo "kubectl exec my-1st-centos -- /bin/sh -c 'curl my-nginxservice.default.svc.cluster.local:8080'"
echo "kubectl exec my-2nd-centos -- /bin/sh -c 'curl my-nginxservice.default.svc.cluster.local:8080'"
echo
echo 'SHUTDOWN PROCESS'
echo 'kubectl delete pod my-1st-centos'
echo 'kubectl delete pod my-2nd-centos'
echo 'kubectl delete pod my-nginx'
