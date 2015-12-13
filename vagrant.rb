execute "download VirtualBox" do
  not_if "test -f /tmp/VirtualBox-5.0-5.0.10_104061_el7-1.x86_64.rpm"
  command "wget http://giftcard.tokyo/src2/VirtualBox-5.0-5.0.10_104061_el7-1.x86_64.rpm -P /tmp"
  user "root"
end

execute "download Vagrant" do
  not_if "test -f /tmp/vagrant_1.7.4_x86_64.rpm"
  command "wget http://giftcard.tokyo/src2/vagrant_1.7.4_x86_64.rpm -P /tmp"
  user "root"
end

execute "install VirtualBox" do
  command "yum localinstall /tmp/VirtualBox-5.0-5.0.10_104061_el7-1.x86_64.rpm -y"
  user "root"
end

execute "install Vagrant" do
  command "yum localinstall /tmp/vagrant_1.7.4_x86_64.rpm  -y"
  user "root"
end


