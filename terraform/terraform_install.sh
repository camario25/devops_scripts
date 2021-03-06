#!/bin/bash


sudo su
apt-get -y update
apt-get -y install python
apt-get -y install python-pip
curl -O https://releases.hashicorp.com/terraform/0.12.6/terraform_0.12.6_linux_amd64.zip
apt-get -y install unzip
mkdir /bin/terraform
unzip terraform_0.12.6_linux_amd64.zip -d /bin/terraform
export PATH=$PATH:/bin/terraform


