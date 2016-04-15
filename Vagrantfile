# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|

    # Trying box other than precise32
    config.vm.box = "ubuntu/trusty32"

    # Share an additional folder to the guest VM. The first argument is
    # the path on the host to the actual folder. The second argument is
    # the path on the guest to mount the folder. And the optional third
    # argument is a set of non-required options.
    # config.vm.synced_folder "../data", "/vagrant_data"
    config.vm.synced_folder ".", "/vagrant", :mount_options => [ "dmode=755","fmode=744" ]

    # Setup network connection between host/guest.
    config.vm.network :forwarded_port, host: 80, guest: 80,  auto_correct: true  
  
    # Run provision script
    # #config.vm.provision :shell, path: "ops/bootstrap.sh"
    
    # Chef Provisioning
    config.vm.provision :chef_solo do |chef|
        chef.add_recipe "apache2"
        chef.json = { :apache2 => { :default_site_enabled => true } }
    end    
    
    ## This seems to not solve the problem....
    ## I still had to edit the rsolve.conf file to add google nameservers.
    ## add google open dns servers [8.8.8.8] and [8.8.4.4] to
    ## /etc/resolvconf/resolv.conf.d/head
    ## nameserver 8.8.8.8
    ## then run resolvconf -u to update configuration.
    #config.vm.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  
    config.vm.provider "virtualbox" do |v|
        v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
        v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    end

  
end
