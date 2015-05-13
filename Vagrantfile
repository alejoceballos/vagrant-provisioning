# To add a Trusty/Tahr VM:
# vagrant box add ubuntu/trusty64 https://atlas.hashicorp.com/ubuntu/boxes/trusty64/versions/20150427.0.0/providers/virtualbox.box

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  ## ###########################################################################  
  ## VM
  ## ###########################################################################  

  config.vm.box = "ubuntu/trusty64"
  # config.vm.box = "hashicorp/precise64"
  # config.vm.box = "official/raring64"
  # config.vm.box = "official/saucy64"

  ## ###########################################################################  
  ## PROVISIONING
  ## ###########################################################################  

  ## Basic system dependencies
  config.vm.provision :shell, :path => "bootstrap.sh"
  
  ## Java (7 or 8, check script)
  config.vm.provision :shell, :path => "bootstrap-java.sh"
  
  ## MySQL (check for default root password)
  # config.vm.provision :shell, :path => "bootstrap-mysql.sh"
  
  ## RabbitMQ 
  # config.vm.provision :shell, :path => "bootstrap-rabbitmq.sh"

  ## Newest Apache 2 (comment if default is enough) 
  # config.vm.provision :shell, :path => "bootstrap-apache.sh"
  
  ## PHP 5 (Lots of modules, check desired ones. Beware for dependencies of next 
  ## boostraps)
  # config.vm.provision :shell, :path => "bootstrap-php5.sh"
  
  ## CURL (older versions do not provided it by default)
  # config.vm.provision :shell, :path => "bootstrap-curl.sh"
  
  ## Composer (depends on PHP)
  # config.vm.provision :shell, :path => "bootstrap-composer.sh"
  
  ## NodeJS
  # config.vm.provision :shell, :path => "bootstrap-nodejs.sh"
  
  ## Basic project configuration (the reason for this VM creation)
  # config.vm.provision :shell, :path => "bootstrap-project-config.sh"
  
  ## ###########################################################################  
  ## PORT FORWARDING
  ## ###########################################################################  

  ## Apache forwarding
  config.vm.network :forwarded_port, host: 8080, guest: 80
  
  ## MySQL forwarding
  # config.vm.network :forwarded_port, host: 3307, guest: 3306

  ## ###########################################################################  
  ## VM HARDWARE SETTINGS
  ## ###########################################################################  

  config.vm.provider "virtualbox" do |v|
    v.name = "my_vm"
    v.memory = 512
    v.cpus = 1
    v.gui = false
  end
end
