It includes a `Dockerfile` for building a Docker image with the application, and a `Jenkinsfile` that defines a build pipeline for it.

# Kubernetes Cookbook Second Edition
Original
  THe examples originate from:
  Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.

  This repository is not intended to take anything away from the original.  It is intended to be a companion to the material.  It automates the examples as scripts.

Goal
  This repository contains the Kubernets examples as scripts for quick consumption and analysis for new users.

Contents
  The Packt folder contatins original material from PacktPublishing.. It includes the text, and two downloadabled repositories.
  The Scripts folder includes the commands to execute the examples from the text.  These are seperated by chapters and include the yaml files in the Packt repos.  Scripts have the following naming convention.  They are prefixed with the word "run" followed by a sequence number then a name.
  The sequence is the chapter number plus a two digit value.  (Considering replacing with the page number.)
  The name is a few human readable words regarding the descriptive topic.  
  For example, run202_k8_1st_pod.sh is the shell script to run your first kubernetes pod.  It can be found in chapter two.  The low sequence value tells you it is near the begining of the chapter.