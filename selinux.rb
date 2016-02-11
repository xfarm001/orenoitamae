file "/etc/sysconfig/selinux" do
  action :edit
  block do |content|
    content.gsub!(/^SELINUX=.+$/, "SELINUX=disabled")
  end
end
