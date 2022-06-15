#!/bin/bash
# run103_explore_etcd_registry.sh
## \brief kube-proxy dynamically changes the ip table registry.
## \see Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.
#
curl -L http://127.0.0.1:4001/v2/keys/registry
