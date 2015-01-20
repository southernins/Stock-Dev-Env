Project Development Environment
===============================


Dependencies
------------

  - Virtualbox
  - Vagrant
  
  
Getting Started
---------------

If you have GIT installed you can run the following in an empty development directory to get started 
  git clone git://github.com/nakie/Stock-Dev-Env.git ./  
  
To initialize the dev environment for the first time run vagrant up. This should read the "Vagrantfile" and download the
needed box file.  Once the VM has started bootstrap.sh is run to configure the environment.  Apache / MYSQL / PHP is installed, the document root is pointed to the public folder.  Networking configuration is setup.

use vagrant ssh to connect to the machine via SSH

Folder Structure
----------------

  - public: document root of VM webserver.
  
  
To Do's
--------

  - add Configuration Management software to better manage VM config/setup and consistancy.
  - Add Quick install/setup for the follwoing development environments.
	- Drupal
	- Wordpress
	- Node.js
	- Javascript / Angular
	- PHP web applications w/ Framework ( Zend / Symphony ).
	
	
  
