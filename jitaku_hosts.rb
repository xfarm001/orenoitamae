execute "edit hosts" do
  command "cat << EOS >> /etc/hosts
192.168.17.146  hadoop01
192.168.17.147  hadoop02
192.168.17.148  hadoop03
192.168.17.149  hadoop04
EOS"
end

