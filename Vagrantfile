Vagrant.configure("2") do |config|

  config.vm.box = "generic/ubuntu1804"
  config.vm.hostname = "osm"
  config.vm.network "forwarded_port", guest: 80, host: 8080

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096"
    vb.cpus = 2
  end

  config.vm.provider :libvirt do |libvirt|
    libvirt.cpus = 2
    libvirt.memory = "4096"
    libvirt.nested = true
    libvirt.default_prefix = ''

  end

  config.vm.provision "shell", privileged: false do |s|
    s.path = "scripts/install-docker.sh"
  end

  # trigger reload
  #config.vm.provision :reload

  config.vm.provision "shell", privileged: false do |s|
    s.path = "scripts/install-osm.sh"
  end

end
