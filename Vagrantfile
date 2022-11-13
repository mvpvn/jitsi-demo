#-*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "bento/ubuntu-20.04"
  # config.vm.synced_folder ".", "/vagrant", disabled: true
  # config.ssh.private_key_path = "~/.ssh/id_rsa"
  # config.ssh.forward_agent = true
  config.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: "~/.ssh/authorized_keys"
  # config.ssh.insert_key = false
  (1..1).each do |i|
    config.vm.define "jitsi#{i}" do |s|
      s.vm.hostname = "jitsi#{i}"
      s.vm.network "private_network", ip: "192.168.56.11#{i}"
      s.vm.provider "virtualbox" do |vb|
        vb.gui = false
        vb.memory = "8192"
      end
    end
    if ARGV[0] == 'up'
      system("ssh-keygen -R 192.168.56.11#{i}")
      system("ssh-keygen -R jitsi#{i}")
    end
  end
end