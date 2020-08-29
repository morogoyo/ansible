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
     vb.memory = "5120"
     end
end
