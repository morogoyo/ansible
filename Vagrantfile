# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "centos/7"
  config.vm.boot_timeout=600
  config.vagrant.plugins = ["vagrant-env", "vagrant-vbguest"]


  config.vm.synced_folder ".", "/home/vagrant/ansible"


   config.vm.provider "virtualbox" do |vb|
     # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true

    # Customize the amount of memory on the VM:
     vb.memory = "4096"
   end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Ansible, Chef, Docker, Puppet and Salt are also available. Please see the
  # documentation for more information about their specific syntax and use.
   config.vm.provision "shell", inline: <<-SHELL
     yum update -y
     yum install -y wget curl jq epel-release
     yum install -y ansible
    #  sudo adduser -m ansible  
    #  mkdir /home/ansible/.ssh    
    #ssh-keygen -t rsa -f /home/ansible/.ssh/aws_rene_id_rsa -q -P ""
    #  echo 'cd /home/ansible' >> ~/.bashrc
    
   SHELL

end
