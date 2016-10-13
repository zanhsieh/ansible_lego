#!/usr/bin/env bash
sudo apt install -y sshpass python-dev python-pip libffi-dev libssl-dev libyaml-dev
sudo apt-get --purge remove -y python-cffi
sudo pip install --upgrade cffi
sudo pip install ansible markupsafe
sudo ansible-galaxy install geerlingguy.apache thefinn93.letsencrypt
sudo mkdir -p /etc/ansible
sudo tee -a /etc/ansible/hosts <<EOF
10.0.40.42 ansible_connection=ssh ansible_user=vagrant ansible_ssh_pass=vagrant ansible_become=true ansible_become_user=root
EOF
