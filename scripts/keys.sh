#!/usr/bin/env bash



if [ ! -d "/home/vagrant/.ssh/" ]
then
echo "Creating .ssh directory"
mkdir /home/vagrant/.ssh/
fi

echo "moving git pem"
cat  /home/vagrant/ansible/keys/git_hub_id_rsa > /home/vagrant/.ssh/git.id_rsa
echo "moving academy pem"
cat /home/vagrant/ansible/keys/academy.id_rsa  > /home/vagrant/.ssh/vagrant.id_rsa

