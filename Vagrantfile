# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "geerlingguy/debian9"

  config.vm.network :private_network, ip: "192.168.33.3"

  # setup python
  config.vm.provision :shell, :path => "vm-bootstrap.sh"

  #
  # Run Ansible from the Vagrant Host
  #
  config.vm.provision "ansible" do |ansible|
    ansible.host_key_checking = false
    ansible.verbose = "vv"
    ansible.inventory_path = "hosts"
    ansible.limit = "all"
    ansible.sudo = true
    ansible.playbook = "vpn-playbook.yml"
  end

end