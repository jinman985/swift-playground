Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-16.04"
  config.vm.synced_folder ".", "/vagrant_data", create: true

  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update
    sudo apt-get --assume-yes install clang libicu-dev
    tar zxf /vagrant_data/swift-4.0-DEVELOPMENT-SNAPSHOT-2017-12-04-a-ubuntu16.04.tar.gz
    sudo chown -R vagrant:vagrant swift-*
    echo "export PATH=/home/vagrant/swift-4.0-DEVELOPMENT-SNAPSHOT-2017-12-04-a-ubuntu16.04/usr/bin:\"${PATH}\"" >> .profile
    echo "Swift has successfully installed on Linux"
  SHELL
end
