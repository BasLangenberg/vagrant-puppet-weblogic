# Vagrant, Puppet and WebLogic

The purpose of this repository is to explain Puppet's role and profile pattern to a WebLogic savvy audience. It is intended to go with a introductionary talk about what Puppet is and how it can help us in the 'enterprise'.

Many thanks to Edwin Biemond and Bert Hajee for the orawls and easy_type modules, which are the core of this solution.

## How to get this running
1. Download jdk-7u71-linux-x64.tar.gz and fmw_12.1.3.0.0_wls.jar, stage them in the directory specified in Vagrantfile
2. Build the base box with Packer. See [My Packer Repo](https://github.com/BasLangenberg/packer-vagrant-builder)
3. Issue a Vagrant up!

## Contributers

Bas Langenberg (baslangenberg [at] gmail dot com)
