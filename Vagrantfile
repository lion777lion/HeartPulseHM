Vagrant.configure("2") do |config|
  	config.vm.box = "hashicorp/bionic64"
	config.vm.provider "virtualbox"
	config.vm.define :ha1 do |node|
    		node.vm.hostname = "ha1"
    		node.vm.network :public_network, ip: "192.168.1.50" 
		node.vm.network :forwarded_port, guest: 80, host: 4567
		config.vm.provision :shell, path: "primary.sh"
	end
	config.vm.define :ha2 do |node|
    		node.vm.hostname = "ha2"
    		node.vm.network :public_network, ip: "192.168.1.51" 
		node.vm.network :forwarded_port, guest: 80, host: 4568
		node.vm.network :forwarded_port, guest: 5672, host: 5672
		config.vm.provision :shell, path: "boundary.sh"
	end
end
