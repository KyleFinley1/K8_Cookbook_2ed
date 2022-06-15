#!/bin/bash
# git_clone_k8_cookbook_repo.bat
## \brief Retrieves the Kubernetes cookbook rpository
## \see Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.
export DEST=kubernetes-cookbook_second-edition

git clone --recursive https://github.com/kubernetes-cookbook/second-edition.git $DEST

cd $DEST
git branch
