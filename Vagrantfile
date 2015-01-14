VAGRANTFILE_API_VERSION = "2"

def setProvider(server, memory = 512, cpus = 1)
  server.vm.provider :virtualbox do |provider, override|
    override.vm.box = "ubuntu/trusty32"
    provider.memory = memory
    provider.cpus = cpus
  end
end

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define "nfs", primary: true do |server|
    server.vm.hostname = "nfs-server"
    setProvider(server)
    server.vm.provision "shell", path: "bin/nfs.sh"
    server.vm.network "private_network", ip: "172.22.0.10"
  end

  (1..3).each do |i|
    config.vm.define "app#{i}" do |server|
      server.vm.hostname = "nfs-client-#{i}"
      setProvider(server)
      server.vm.provision "shell", path: "bin/app.sh"
      server.vm.network "private_network", ip: "172.22.0.1#{i}"
    end
  end
end
