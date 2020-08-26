#!/bin/bash

#yum update -y
#yum upgrade -y
#yum install epel-release ansible -y

if [ ! -d "/home/ansible/" ]
  then
    rm -rf /home/ansible
    useradd -m -p password ansible
  else
    echo "created andible user and its directory"
fi

#yum install curl wget nmap vim git -y

#if [ -d "/home/ansible/" ]
# then
#   git clone git@github.com:morogoyo/ansible.git /home/ansible/ansible
#fi





