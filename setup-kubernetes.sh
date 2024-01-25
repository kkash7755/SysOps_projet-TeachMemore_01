#!/bin/bash

# Les étapes d'installation de Kubernetes pour les masters

# Désactivez le swap sur les machines
sudo swapoff -a
sudo sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab

# Installez les dépendances
sudo apt-get update
sudo apt-get install -y containerd

# Ajoutez le référentiel Kubernetes
sudo apt-get update && sudo apt-get install -y apt-transport-https curl
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# Installation de Kubernetes
sudo apt-get install -y kubelet kubeadm kubectl

# Initialisez le cluster sur le premier master
if [ "$(hostname)" == "kubemaster1" ]; then
    sudo kubeadm init --pod-network-cidr=192.168.0.0/16
fi

# Configurez le kubectl sur le premier master
if [ "$(hostname)" == "kubemaster1" ]; then
    mkdir -p $HOME/.kube
    sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
    sudo chown $(id -u):$(id -g) $HOME/.kube/config
fi

# Joindre les workers au cluster
if [ "$(hostname)" == "kubemaster1" ]; then
    kubeadm token create --print-join-command > join-command.sh
    chmod +x join-command.sh
    scp join-command.sh node1:/tmp/
    scp join-command.sh node2:/tmp/
    scp join-command.sh node3:/tmp/
    rm join-command.sh
fi
