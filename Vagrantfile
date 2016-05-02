# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|

	# Set VM box
	config.vm.box = "ubuntu/trusty32"

	# Setup network connection between host/guest.
	config.vm.network :forwarded_port, host: 80, guest: 80,  auto_correct: true

	# configure proper premissions for items in shared mount.
	config.vm.synced_folder ".", "/vagrant", :mount_options => [ "dmode=755","fmode=744" ]
	config.vm.synced_folder "public", "/vagrant/public", :mount_options => [ "dmode=755","fmode=644" ]

	# Run bootstrap/initial provision script
	# config.vm.provision :shell, path: "ops/bootstrap-puppet.sh"
	config.vm.provision :shell do |shell|
		shell.inline = "
		puppet module install puppetlabs/mysql;
		puppet module install puppetlabs/apache"
	end
	# END provision Shell

	# Provison with Puppet
	config.vm.provision "puppet" do |puppet|

		puppet.manifests_path 	= 'puppet/manifests'
		puppet.module_path 		= 'puppet/modules'
		puppet.manifest_file  	= 'lamp.pp'
		# puppet.options 			= '--verbose --debug'

	end
	# END provision Puppet
	
end
# END Vagrant.configure
