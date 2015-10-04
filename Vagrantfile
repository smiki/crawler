VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "centos7"
  config.ssh.forward_agent = true

  config.vm.define :console do |console|
    console.vm.hostname = "crawler"
    #console.vm.network :private_network, ip: "192.168.50.12"
    console.vm.network :forwarded_port, host: 3001, guest: 22
    #console.vm.network :forwarded_port, host: 80, guest: 80

    #パスフレーズなしの鍵をgitに登録して設定する。例.「E:/vagrant/work/ssh/id_rsa」
    #console.vm.synced_folder "E:/vagrant/work/ssh", "/home/vagrant/work/ssh"
    #console.vm.provision :shell, :path => "script/setup.sh", :privileged => false
    console.vm.provider "virtualbox" do |v|
      v.customize ["modifyvm", :id, "--memory", 2048]
    end
  end

end