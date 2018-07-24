#!/usr/bin/env bash
#### Install python and sudo
apt -y update && apt install -y python sudo


#### Create the ansible user
useradd -m -s /bin/bash ansible

#### Deploy your SSH public key
sudo -u ansible mkdir -m 700 /home/ansible/.ssh
sudo -u ansible touch /home/ansible/.ssh/authorized_keys



#### Allow ansible to get root via sudo without a password
#visudo

# User privilege specification
#ansible ALL=(ALL:ALL) NOPASSWD:ALL