#!/usr/bin/env bash

sudo apt install -y ansible

ansible-galaxy collection install community.general
ansible-playbook env_setup/playbook_ubuntu.yml
ansible-playbook env_setup/playbook.yml
