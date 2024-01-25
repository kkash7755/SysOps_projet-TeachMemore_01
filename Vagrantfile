# -*- mode : ruby -*-
# vi: set ft-ruby :

# Provision 2 Master machines
Vagrant.configure("2") do |config|
  (1..2).each do |i|
    config.vm.define "kubemaster#{i}" do |k8s|
      k8s.vm.box = "ubuntu/jammy64"
      k8s.vm.hostname = "kubemaster#{i}"
      k8s.vm.provider "virtualbox" do |vb|
        vb.memory = 2048
        vb.cpus = 1
        vb.name = "kubemaster#{i}"
      end
      k8s.vm.provision "shell", path: "k8s-install.sh"
    end
  end

  # Provision 2 Worker machines
  (1..2).each do |i|
    config.vm.define "node#{i}" do |node|
      node.vm.box = "ubuntu/jammy64"
      node.vm.hostname = "node#{i}"
      node#{i}.vm.timeout = 600
      node.vm.provider "virtualbox" do |vb|
        vb.memory = 2048
        vb.cpus = 1
        vb.name = "node#{i}"
      end
      node.vm.provision "shell", path: "setup-kubernetes.sh"
    end
  end
end

