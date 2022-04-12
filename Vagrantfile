Vagrant.configure("2") do |config|
    config.hostmanager.enabled = true 
    config.hostmanager.manage_host = true
    config.vm.define "control" do |control|
        #control.vm.box = "ubuntu/xenial64"
        config.vm.box = "ubuntu/focal64"
        control.vm.hostname = "control01"
        control.vm.network "private_network", ip: "192.168.56.10"
        control.vm.provision "shell", path: "control-machine.sh"  
        control.vm.provider "virtualbox" do |vb|
            vb.cpus = 2
            vb.memory = "2048"
        end
    end
    # config.vm.define "centos" do |centos|
    #     config.vm.box = "centos/8"
    #     centos.vm.hostname = "centos01"
    #     centos.vm.network "private_network", ip: "192.168.56.11"
    #     #centos.vm.provision "shell", path: "control-machine.sh"  
    #     centos.vm.provider "virtualbox" do |vb|
    #         vb.cpus = 2
    #         vb.memory = "2048"
    #     end
    #end
end
  