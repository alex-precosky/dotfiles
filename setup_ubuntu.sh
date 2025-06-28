#!/usr/bin/env bash

set -e # terminate on failure

sudo apt update
sudo apt upgrade -y

sudo apt install -y ansible

ansible-galaxy collection install --force community.general
ansible-playbook env_setup/playbook_ubuntu.yml
ansible-playbook env_setup/playbook.yml
