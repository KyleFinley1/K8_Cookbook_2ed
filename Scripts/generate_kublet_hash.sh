#!/bin/bash
# generate_kublet_hash.sh
## \brief Creates and store a hash key in $HASH and HASH.txt
## \see Saito, Hideto, HuiChuan Chloe Lee, Ke-Jou Csrol Hsu. Kubernetes Cookbook Second Edition. Birmingham, UK, Packt Publishing, 2018.
#
HASH=$(openssl x509 -pubkey -in /etc/kubernetes/pki/ca.crt | openssl rsa-pubin -outform der 2>/dev/null | openssl dgst -sha256 -hex | sed 's/^.*\s//')

echo $HASH > HASH.txt
