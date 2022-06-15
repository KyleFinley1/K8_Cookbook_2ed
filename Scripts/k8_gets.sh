#!/bin/bash
# k8_gets.sh
## \brief Kubernetes information getter.
## \see Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.
#
## @brief Get Kebernetes version.
kubectl version --short
## @brief Checks the status of Kebernetes master.
kubectl cluster-info
## @brief List Kebernetes component status.
kubectl get cs
## @brief List Kebernetes replica sets.
kubectl get rs
## @brief List the Kebernetes worker nodes.
kubectl get nodes
## @brief List the Kebernetes namespaces.
kubectl get namespaces
## @brief List the Kebernetes pods.
kubectl get pods
## @brief Check the status of Kebernetes deployment.
kubectl get deployment
## @brief Check the status Kebernetes service.
kubectl get service
## @brief List Kebernetes endpoints.
kubectl get ep
