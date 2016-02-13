file "/etc/sysctl.conf" do
  user "root"
  action :edit
  block do |content|
    unless content =~ /ipv6/
      content.concat <<-CONF
#{node["oreno-env"]["user"]}
      CONF
    end
  end
end
