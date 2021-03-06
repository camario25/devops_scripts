#!/bin/bash


sudo apt-get -y update >> /tmp/script.log
sudo apt-get -y install python >> /tmp/script.log
sudo apt-get -y install python-pip >> /tmp/script.log
sudo curl -O https://releases.hashicorp.com/terraform/0.12.6/terraform_0.12.6_linux_amd64.zip >> /tmp/script.log
sudo apt-get -y install unzip >> /tmp/script.log
sudo mkdir /bin/terraform >> /tmp/script.log
sudo unzip terraform_0.12.6_linux_amd64.zip -d /bin/terraform >> /tmp/script.log
sudo export PATH=$PATH:/bin/terraform >> /tmp/script.log

sudo pip install awscli --upgrade >> /tmp/script.log
read -n1 -r -p "Press any key to continue..." key
sudo apt-get -y install sofware-properties-common >> /tmp/script.log
sudo add-apt-repository ppa:ansible/ansible >> /tmp/script.log
sudo apt-get -y  install ansible >> /tmp/script.log

sudo ssh-keygen -t rsa -N "" -f /root/.ssh/mario >> /tmp/script.log
sudo ssh-agent bash >> /tmp/script.log
sudo ssh-add /root/.ssh/mario >> /tmp/script.log


