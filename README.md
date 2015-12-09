# orenoitamae  

# how to use




#### make environment for VirtualBox and Vagrant
- $ yum install kernel-devel kernel-headers dkms
- $ yum groupinstall "Development Tools"
- $ yum update

- $ wget http://download.virtualbox.org/virtualbox/5.0.10/VirtualBox-5.0-5.0.10_104061_el7-1.x86_64.rpm
- $ wget https://releases.hashicorp.com/vagrant/1.7.4/vagrant_1.7.4_x86_64.rpm
- $ yum localinstall VirtualBox-5.0-5.0.10_104061_el7-1.x86_64.rpm
- $ yum localinstall vagrant_1.7.4_x86_64.rpm
- $ vagrant box add CentOS67 https://github.com/CommanderK5/packer-centos-template/releases/download/0.6.7/vagrant-centos-6.7.box
- $ vagrant box add tsunokawa/centos7.0.1406

- $ /usr/lib/virtualbox/vboxdrv.sh setup

tips
```
前が そのまま（/usr/src/kernels/3.10.0.-229.4.2.el7.x86_64 ぶらぶらぶら）
後ろが uname で表示される方

ln -s /usr/src/kernels/4.2.6-301.fc23.x86_64 /usr/src/kernels/4.2.3-300.fc23.x86_64

```

#### make environment for ruby
- $ curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -
- $ curl -L get.rvm.io | bash -s stable
- $ source /etc/profile.d/rvm.sh
- $ rvm reload
- $ rvm install 2.2.0


#### install itamae ####
- $ gem install itamae



#### do itamae

- $ itamae local nginx.rb



