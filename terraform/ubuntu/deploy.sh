#!/bin/bash
# copy encrypted keys into this directory
cp ../secrets/terraform.tfvars.asc .
# use gnupg@1.4.23 to decrypt keys
gpg1 --decrypt  --output ./terraform.tfvars ./terraform.tfvars.asc
# confirm terraform is good
terraform plan
# apply terraform code
terraform apply
# wait a minute
sleep 60s
# remove the unencrypted keys file
rm ./terraform.tfvars*
