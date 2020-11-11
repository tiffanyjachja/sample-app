## Provisioning Public Cloud Infrastructure ##
The `provision_k8s_aws.sh` file contains a bash script that utilizes the aws cli tool and kops to provision a Kubernetes
cluster on AWS. To utilize the script ensure you have the following tools installed:
* [aws cli](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
* kops (`brew install kops` on MacOS)

Feel free to configure the bash script variables when installing the cluster. Note if you don't have an ssh key you can 
generate one with the ssh-keygen command:
`ssh-keygen -t rsa -f ./id_rsa` 
