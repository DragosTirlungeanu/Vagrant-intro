# -*- mode: ruby -*-
# vi: set ft=ruby :

required_pugins = ["vagrant-hostsupdater"]
required_pugins.each do |plugin|
  exec "vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin
    
  end

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"
  config.vm.network "private_network", ip: "192.168.10.100"
  config.hostsupdater.aliases = ["dev.local"]

  # Synced app folder
  config.vm.synced_folder "app", "/home/ubuntu/app"

  #provision
  config.vm.provision "shell", path: "environment/app/provision.sh"

  #Multi-Machine Config
  config.vm.define "lb1" do |lb1|
   lb1.vm.box = "ubuntu/xenial64"
  end

  config.vm.define "db" do |db|
   db.vm.box = "ubuntu/xenial64"
  config.vm.network "private_network", ip: "192.168.10.150"
  end

end
