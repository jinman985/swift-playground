Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-18.04"
  config.vm.synced_folder ".", "/vagrant_data"

  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update
    sudo apt-get --assume-yes install clang libicu-dev
    tar zxf /vagrant_data/swift.tar.gz
    sudo chown -R vagrant:vagrant swift*
    echo "export PATH=/home/vagrant/swift.tar.gz/usr/bin:\"${PATH}\"" >> .profile
    echo "Swift has successfully installed on Linux"
  SHELL
end
