#!/bin/sh

ansible-playbook -i inventory/hosts 10-prepare-archive.yml || exit
ansible-playbook -i inventory/hosts 20-ca.yml || exit
ansible-playbook -i inventory/hosts 30-etcd-bootstrap.yml || exit
ansible-playbook -i inventory/hosts 40-controller-bootstrap.yml || exit
ansible-playbook -i inventory/hosts 45-clusterrolebinding.yml || exit
ansible-playbook -i inventory/hosts 50-worker-bootstrap.yml || exit
ansible-playbook -i inventory/hosts 60-addon.yml || exit
