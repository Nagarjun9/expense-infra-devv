#!/bin/bash
componet=$1
environment=$2
dnf install ansible -y 
pip3.9 install botocore boto3
ansible-pull -i localhost, -U https://github.com/Nagarjun9/expense-ansible-roles-tf.git main.yaml -e component=$component -e env=$environment

#ansible-pull -i localhost, -U ../../expense-ansible-roles-tf main.yaml -e component=$component -e env=$environment


