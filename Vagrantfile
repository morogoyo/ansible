# -*- mode: ruby -*-
# vi: set ft=ruby :


# you're doing.
Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.define "app" do |app|
  app.vagrant.plugins = ["vagrant-env", "vagrant-vbguest"]
  app.vm.hostname = "app"

  # Create directory to sync with vagrant
    app.vm.synced_folder ".","/home/vagrant/ansible", create: true, group: "vagrant", owner: "vagrant",
    id: "app"


  #provision centos box
    app.vm.provision "shell", path: "scripts/vagrantprovision.sh"

  #get ssh keys into vagrant
    app.vm.provision "shell", path: "scripts/keys.sh"








end

   config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
     # Customize the amount of memory on the VM:
     vb.memory = "5120"
     end


  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
end
