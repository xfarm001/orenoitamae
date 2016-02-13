file "/etc/sudoers" do
  user "root"
  action :edit
  block do |content|
    unless content =~ /sugiyan/
      content.concat <<-CONF
ezreal        ALL=(ALL)       NOPASSWD: ALL
      CONF
    end
  end
end

