package "java-1.8.0-openjdk" do
  action :install
end

package "elasticsearch" do
  action :install
end

service "elasticsearch" do
  action [:enable, :start]
end


