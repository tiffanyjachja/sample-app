#!/bin/bash

export bucket_name=liatrio-tiff-k8s-bucket
export KOPS_CLUSTER_NAME=imesh.k8s.local
export KOPS_STATE_STORE=s3://liatrio-tiff-k8s-bucket
# If you don't have an ssh key you can generate one with the ssh-keygen command
# ssh-keygen -t rsa -f ./id_rsa
export SSH_KEY_PATH=id_rsa.pub

aws s3api create-bucket \
--bucket ${bucket_name}  \
--region us-east-1
aws s3api put-bucket-versioning --bucket ${bucket_name} --versioning-configuration Status=Enabled

kops create cluster \
--node-count=1 \
--node-size=t2.medium \
--zones=us-east-1a \
--name=${KOPS_CLUSTER_NAME}

kops create secret sshpublickey admin -i ${SSH_KEY_PATH} --name ${KOPS_CLUSTER_NAME} --state ${KOPS_STATE_STORE}
kops update cluster --name ${KOPS_CLUSTER_NAME} --yes
kops validate cluster
