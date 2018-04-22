Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-18.04"
  config.vm.synced_folder ".", "/vagrant_data"

  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get --assume-yes install clang libicu-dev
    tar zxf /vagrant_data/swift-DEVELOPMENT-SNAPSHOT-2018-04-18-a-ubuntu16.10.tar.gz
    sudo chown -R vagrant:vagrant swift-*
    echo "export PATH=/home/vagrant/swift-DEVELOPMENT-SNAPSHOT-2018-04-18-a-ubuntu16.10/usr/bin:\"${PATH}\"" >> .profile
    echo "Swift has successfully installed on Linux"
  SHELL
end
