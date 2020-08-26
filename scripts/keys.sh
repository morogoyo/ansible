#!/usr/bin/env bash

if [ ! -d "/home/ansible/.ssh/" ]
then
mkdir /home/ansible/.ssh/
cat /home/ansible/keys/git_hub_id_rsa > /home/ansible/.ssh/git.id_rsa
cat /home/ansible/keys/academy.id_rsa  > /home/ansible/.ssh/vagrant.id_rsa
fi