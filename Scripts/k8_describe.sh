#!/bin/bash
# k8_describe.sh
## \brief Kubernetes information getter.
#
## @brief Describe Kebernetes component status.
kubectl describe cs $1
## @brief Describe Kebernetes replica sets.
kubectl describe rs $1
## @brief Describe Kebernetes worker nodes.
kubectl describe nodes $1
## @brief Describe Kebernetes namespaces.
kubectl describe namespaces $1
## @brief Describe Kebernetes pod.
kubectl describe pods $1
## @brief Describe Kebernetes deployment.
kubectl describe deployment $1
## @brief Describe Kebernetes service.
kubectl describe service $1
## @brief Describe Kebernetes endpoint.
kubectl describe ep $1
