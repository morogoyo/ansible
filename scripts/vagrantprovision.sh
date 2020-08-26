#!/bin/bash

yum update -y
yum upgrade -y
yum install epel-release ansible -y

if [ ! -d "/home/ansible/" ]
  then    
    useradd -m -p password ansible
  else
    echo "created andible user and its directory"
fi

yum install curl wget nmap vim git -y







