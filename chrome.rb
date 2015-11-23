template "/etc/yum.repos.d/chrome.repo" do
  action :create
  source "templates/etc/yum.repos.d/chrome.repo.erb"
end

package "google-chrome" do
  action :install
end
