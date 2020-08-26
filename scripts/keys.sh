#!/usr/bin/env bash
mkdir /home/ansible/.ssh
cat /home/ansible/keys/git/git_hub_id_rsa > /home/ansible/.ssh/git.id_rsa
cat /home/ansible/keys/linux-academy/academy.id_rsa  > /home/ansible/.ssh/vagrant.id_rsa
