# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  
  # base box
  config.vm.box = "ubuntu/trusty64"
  #config.ssh.forward_agent = true
  
  # network stuff
  config.vm.network "forwarded_port", guest: "80", host: "8081"
  config.vm.network "private_network", ip: "192.168.33.20"
  config.vm.hostname = "" + __dir__ + ""
  
  # sync a folder to have available on host editor
  config.vm.synced_folder __dir__ + "/dev", "/home/vagrant/"
  config.vm.synced_folder __dir__ + "/conf_folder", "/etc/collectd/"

  #run a script to provision
  config.vm.provision "shell", path: "scripts/base.sh"

end


