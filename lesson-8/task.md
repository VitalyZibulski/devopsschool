# Аnsible

## Задача
Написать playbook, который подготавливает сборочное и продовое
окружение на 2-х нодах. На сборочной ноде производится сборка
проекта, на продовой - запуск.
---
process

### Firstly it should be binded master and slaves by using ssh
#### Master:

- sudo apt update
- ssh-keygen
- ssh ubuntu@3.90.207.186
- cat id_ed25519.pub

### Slave:
- sudo apt update
- mkdir -p ~/.ssh && chmod 700 ~/.ssh
- echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEiRd2dvCWFlNiGX7U4gPur/LDb8RbsP8pWN7ZnxX9mj ubuntu@ip-172-31-17-41" >> ~/.ssh/authorized_keys
- chmod 600 ~/.ssh/authorized_keys
- apt install python

### Create Ansible infrastructure
- sudo apt-add-repository --yes --update ppa:ansible/ansible
- sudo apt install ansible -y


