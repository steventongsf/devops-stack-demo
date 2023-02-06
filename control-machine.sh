#!/bin/sh

sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get -y install python3.11
sudo apt-get install ansible awscli -y 
if [ ! -e get-pip.py ]; then
    wget https://bootstrap.pypa.io/get-pip.py
fi
python3 get-pip.py
ansible-galaxy collection install amazon.aws
pip install boto3
pip install --upgrade awscli
mkdir /home/vagrant/project


