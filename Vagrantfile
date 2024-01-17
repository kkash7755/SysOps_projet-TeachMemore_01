# -*- mode: ruby -*-
# vi: set ft=ruby :

#Deploiement d'un cluster kubernetes avec 2 Masters et 3 Noeuds.

# Configuration de noeuds  maîtres #Master1 #Master2
MASTER_COUNT = 2

Vagrant.configure("2") do |config|

  # Configuration des nœuds ou worker(s)
  NODE_COUNT = 3

  # Configuration commune
  (1..MASTER_COUNT).each do |i|
    config.vm.define "master#{i}" do |node|
      node.vm.box = "k8s_master"
      node.vm.network "private_network", type: "dhcp"
      node.vm.provider "virtualbox" do |vb|
        vb.memory = "2048"
        vb.cpus = 2
      end
    end
  end

  (1..NODE_COUNT).each do |i|
    config.vm.define "node#{i}" do |node|
      node.vm.box = "k8s_node"
      node.vm.network "private_network", type: "dhcp"
      node.vm.provider "virtualbox" do |vb|
        vb.memory = "2048"
        vb.cpus = 2
      end
    end
  end
