# -*- mode: ruby -*-
# vi: set ft=ruby :

required_pugins = ["vagrant-hostsupdater"]
required_pugins.each do |plugin|
    exec "vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin 
end

Vagrant.configure("2") do |config|

                # config.vm.box = "ubuntu/xenial64"
                # config.vm.network "private_network", ip: "192.168.10.100"
                # config.hostsupdater.aliases = ["dev.local"]

                # # Synced app folder
                # config.vm.synced_folder "app", "/home/ubuntu/app"

                # #provision
                # config.vm.provision "shell", path: "environment/app/provision.sh"

  # #Multi-Machine Config
  config.vm.define "app" do |app|
    app.vm.box = "ubuntu/xenial64"
    app.vm.network "private_network", ip: "192.168.10.100"
    app.hostsupdater.aliases = ["dev.local"]
    app.vm.synced_folder "./app", "/home/ubuntu"
    app.vm.provision "chef_solo" do |chef|
      chef.add_recipe "node::default"
    end
               # app.vm.synced_folder "./environment/app/profiled", "/etc/profile.d"
               # app.vm.synced_folder "./environment/app/templates", "/home/ubuntu/templates"

    # Synced app folder
    # app.vm.provision "shell", path: "environment/app/provision.sh"
  end

  config.vm.define "db" do |db|
    db.vm.box = "ubuntu/xenial64"
    db.vm.network "private_network", ip: "192.168.10.150"
    db.hostsupdater.aliases = ["database.local"]

  # provision with chef
    db.vm.provision "chef_solo" do |chef|
      chef.add_recipe "mongo::default"
    end

                 # db.vm.synced_folder "./db", "/home/ubuntu/db"
                 # db.vm.provision "shell", path: "db/provision.sh"
  end

end
