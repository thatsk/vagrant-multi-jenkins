Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-18.10"

  config.vm.define "master" do |master|
      master.vm.network "private_network", ip: "192.168.2.2"
      master.vm.provision "shell", path: "master_provision.sh" 
      master.vm.provider "virtualbox" do |v|
        v.name = "jenkins-master"
      end
  end

  config.vm.define "slave1" do |slave1|
      slave1.vm.network "private_network", ip: "192.168.2.3"
      slave1.vm.provision "shell", path: "slave_provision.sh"
      slave1.vm.provider "virtualbox" do |v|
        v.name = "jenkins-slave1"
      end
  end

  config.vm.define "slave2" do |slave2|
      slave2.vm.network "private_network", ip: "192.168.2.4"
      slave2.vm.provision "shell", path: "slave_provision.sh"
      slave2.vm.provider "virtualbox" do |v|
        v.name = "jenkins-slave2"
      end
  end
end
