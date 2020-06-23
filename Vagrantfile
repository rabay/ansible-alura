# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "bento/ubuntu-16.04"
  config.vm.box_check_update = false
  config.vm.network "private_network", ip: "172.17.177.40"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.memory = "512"
    vb.name = "CentosVagrant"
    vb.cpus = 1
    vb.customize ["modifyvm", :id, "--cpuexecutioncap", "50"]
  end

  config.vm.define "wordpress" do |m|
    m.vm.network "private_network", ip: "172.17.177.40"
  end

  config.vm.provision "shell", inline: <<-SHELL
   apt-get -y update
   apt-get -y upgrade
   apt-get -y install nano vim
  SHELL
end
