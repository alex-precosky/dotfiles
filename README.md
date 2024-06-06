# dotfiles
My unix dotfiles managed by git stow plus environment setup automation

Since I have a lot of command lines running everywhere and new ones all the time, I need an easy way to sync my config files!  
GNU stow to the resuce!

Plus ansible to help set some things up.

# Setup

## Stow

Build stow from source. Obtain from: https://ftp.gnu.org/gnu/stow/


## Ansible

Install ansible.

AL2:

```
pip3 install ansible
ansible-galaxy collection install community.general  --server https://old-galaxy.ansible.com
```


Mac: `brew install ansible`

# usage

Clone the repository in your home directory. Then you can...

```
cd dotfiles
```

And then, for example, to install the zsh settings...

```
stow zsh
```

TODO: Automate the installation of `stow` and the running of it.

Run environment setup automation with:

```
cd env_setup
ansible-playbook playbook.yml
```
