# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|

  config.vm.box = "oel66"
  config.vm.hostname = "wls-example"
  config.vm.network "private_network", ip: "192.168.50.20"

  config.vm.provider :virtualbox do |vb|
    # Use VBoxManage to customize the VM. For example to change memory:
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end

  # Shared Directories
  config.vm.synced_folder "C:/DATA/Projects/vagrant-puppet-weblogic", "/opt/puppetcode"

  # Run puppet modules
  config.vm.provision "puppet"  do |puppet|
    puppet.working_directory = '/opt/puppetcode'
    puppet.module_path = "modules"
    puppet.manifests_path = "manifests"
    puppet.manifest_file  = "site.pp"
    puppet.hiera_config_path = "hiera.yaml"
    puppet.options = "--verbose"
  end
end
