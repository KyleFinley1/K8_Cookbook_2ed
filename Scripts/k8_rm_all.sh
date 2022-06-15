#!/bin/bash
# k8_rm_all.sh
## \brief Kubernetes commands to delete.
#
## \brief Remove or delete all pods.
kubectl delete pods -all
## \brief Remove or delete all replicasets.
kubectl delete rs -all
