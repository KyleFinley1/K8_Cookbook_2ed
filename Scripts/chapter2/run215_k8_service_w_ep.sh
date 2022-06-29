#!/bin/bash
# run212_k8_service_w_ep.sh
## \brief Command creates Kubernetes service with endpoint.
## \see Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.
#
kubectl expose -f k8s-endpoint.yaml

echo 'You should get an error!'
echo 'error: cannot expose a Endpoints'
echo
echo 'SHUTDOWN PROCESS'
echo 'kubectl delete svc,ep k8s-ep'
