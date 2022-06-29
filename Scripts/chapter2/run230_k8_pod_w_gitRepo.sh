#!/bin/bash
# run230_k8_pod_w_gitRepo.sh
## \brief Pod clones a git repository.
## \see Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.
#
kubectl create -f 2-6-6_gitRepo.yaml

echo 'SHUTDOWN PROCESS'
echo 'kubectl delete pod gitrepo'
