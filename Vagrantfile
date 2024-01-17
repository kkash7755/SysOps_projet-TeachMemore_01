# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define "kubemaster1" do |kub|
    kub.vm.box = "ubuntu/bionic64"
    kub.vm.hostname = "kubemaster1"
    kub.vm.provision "docker"
    kub.vm.box_url = "ubuntu/bionic64"

    kub.vm.network :private_network, ip: "192.168.56.101"

    kub.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", "2048"]
      v.customize ["modifyvm", :id, "--name", "kubemaster1"]
      v.customize ["modifyvm", :id, "--cpus", "2"]
    end
  end

  config.vm.define "kubemaster2" do |kub|
    kub.vm.box = "ubuntu/bionic64"
    kub.vm.hostname = "kubemaster2"
    kub.vm.provision "docker"
    kub.vm.box_url = "ubuntu/bionic64"

    kub.vm.network :private_network, ip: "192.168.56.102"

    kub.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", "2048"]
      v.customize ["modifyvm", :id, "--name", "kubemaster2"]
      v.customize ["modifyvm", :id, "--cpus", "2"]
    end
  end

  config.vm.define "kubenode1" do |kubenode|
    kubenode.vm.box = "ubuntu/bionic64"
    kubenode.vm.hostname = "kubenode1"
    kubenode.vm.provision "docker"
    kubenode.vm.box_url = "ubuntu/bionic64"

    kubenode.vm.network :private_network, ip: "192.168.56.201"

    kubenode.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", "2048"]
      v.customize ["modifyvm", :id, "--name", "kubenode1"]
      v.customize ["modifyvm", :id, "--cpus", "2"]
    end
  end

  config.vm.define "kubenode2" do |kubenode|
    kubenode.vm.box = "ubuntu/bionic64"
    kubenode.vm.hostname = "kubenode2"
    kubenode.vm.provision "docker"
    kubenode.vm.box_url = "ubuntu/bionic64"

    kubenode.vm.network :private_network, ip: "192.168.56.202"

    kubenode.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", "2048"]
      v.customize ["modifyvm", :id, "--name", "kubenode2"]
      v.customize ["modifyvm", :id, "--cpus", "2"]
    end
  end

  config.vm.define "kubenode3" do |kubenode|
    kubenode.vm.box = "ubuntu/bionic64"
    kubenode.vm.hostname = "kubenode3"
    kubenode.vm.provision "docker"
    kubenode.vm.box_url = "ubuntu/bionic64"

    kubenode.vm.network :private_network, ip: "192.168.56.203"

    kubenode.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", "2048"]
      v.customize ["modifyvm", :id, "--name", "kubenode3"]
      v.customize ["modifyvm", :id, "--cpus", "2"]
    end
  end

end

