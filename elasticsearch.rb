package "java-1.8.0-openjdk" do
  action :install
end

execute "Download and install the public signing key" do
  command "rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch"
  user "root"
end

template "/etc/yum.repos.d/elasticsearch.repo" do
  source "templates/etc/yum.repos.d/elasticsearch.repo.erb"
end

package "elasticsearch" do
  action :install
end

service "elasticsearch" do
  action [:enable, :start]
end


