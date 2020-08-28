#!/bin/bash


echo "vagrantprovision.sh"
yum update -y
yum upgrade -y
yum install epel-release -y
yum install curl wget nmap vim git -y
yum install ansible -y






