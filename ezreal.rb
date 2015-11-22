template "/etc/yum.repos.d/ezreal.repo" do
  action :create  # デフォルトなので省略可
  source "templates/etc/yum.repos.d/ezreal.repo.erb"
end

