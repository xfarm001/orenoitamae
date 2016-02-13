execute "edit hosts" do
  command "cat << EOS >> /etc/hosts
10.86.194.252	hadoop00
10.86.194.56	hadoop01
10.86.193.157	hadoop02
10.86.194.95	hadoop03
10.86.194.104	hadoop04
EOS"
end

