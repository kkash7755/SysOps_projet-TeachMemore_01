#Installation de docker en utilisant le script d'installation # lien https://docs.docker.com/engine/install/ubuntu/

#Installation de docker sur https://get.docker.com/  # le site officiel

$ curl -fsSL https://get.docker.com -o get-docker.sh
$ sudo sh ./get-docker.sh --dry-run

#Execution du script pour l'installation de docker

$ curl -fsSL https://get.docker.com -o get-docker.sh
$ sudo sh get-docker.sh

# Test installation docker

$ sudo apt update && sudo apt upgrade -y
$ docker version
