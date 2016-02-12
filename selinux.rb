file "/etc/selinux/config" do
  action :edit
  block do |content|
    content.gsub!(/^SELINUX=.+$/, "SELINUX=disabled")
  end
end
