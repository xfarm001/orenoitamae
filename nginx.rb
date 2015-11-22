template "/etc/yum.repos.d/nginx.repo" do
  action :create  # デフォルトなので省略可
  source "templates/etc/yum.repos.d/nginx.repo.erb"
end

package "nginx" do
  action :install
end

service "nginx" do
  action [:enable, :start]
end
