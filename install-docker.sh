#Update the apt package index
sudo apt-get update

#Install packages to allow apt to use a repository over HTTPS:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#Add Docker’s official GPG key
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-key fingerprint 0EBFCD88 

#Update the apt package index
sudo apt-get update

#Install docker ce
sudo apt-get install -y docker-ce

#Create the docker group
sudo groupadd docker

#Add your user to the docker group
sudo usermod -aG docker $USER

#systemd start on boot
sudo systemctl enable docker
