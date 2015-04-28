Vagrant.configure("2") do |config|
  config.vm.define "perforce" do |perforce|
    perforce.vm.hostname = "perforce"
    perforce.vm.box = "ubuntu/trusty64"
    perforce.vm.network "private_network", ip: "192.168.30.11"
    perforce.vm.network "forwarded_port", guest: 1666, host: 8999

    perforce.vm.synced_folder "puppet/hiera", "/hieradata"

    perforce.vm.provision "shell", path: "bootstrap.sh"

    perforce.vm.provision :puppet do |puppet|
      puppet.manifests_path = 'puppet/manifests' 
      puppet.module_path = 'puppet/modules' 
      puppet.manifest_file = 'perforce.pp'
      puppet.hiera_config_path = "puppet/hiera.yaml"
      puppet.facter = {
        "environment" => "local",
        "hiera_data_dir" => "/hieradata"
      }
    end
  end
end
