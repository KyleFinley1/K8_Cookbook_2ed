:: git_clone_k8_cookbook_repo.bat
::## \brief Retrieves the Kubernetes cookbook rpository
::## \see Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.
SET DEST=kubernetes-cookbook_second-edition

git clone --recursive https://github.com/kubernetes-cookbook/second-edition.git %DEST%

CD %DEST%
git branch
CMD /k
