Vagrant.configure("2") do |config|
  config.vm.define "perforce" do |perforce|
    perforce.vm.hostname = "perforce"
    perforce.vm.box = "ubuntu/trusty64"
    perforce.vm.network "private_network", ip: "192.168.30.11"
  end
end
