VAGRANTFILE_API_VERSION = "2"
Vagrant.require_version ">= 1.7.2"


# expose ports from guest to host for convenience
FORWARDED_PORT_RANGE = 10080..10100


Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.define "gitlab01", primary: true do |node|
        node.vm.box = "chef/centos-6.5"
	node.vm.network "private_network", ip: "192.168.50.10"
        node.vm.provision "hosts" do |hosts|
            hosts.add_host '192.168.50.10', ['gitlab01.angus.com', 'gilab01']
        end
        #node.vm.provision "shell", path: "provision/setup-env.sh"
        #node.vm.provision "shell", path: "provision/setup-env.sh"
        node.vm.provider "virtualbox" do |vb|
            vb.customize ["modifyvm", :id, "--memory", "1024"]
        end
    end

end
