directory "#{WS_HOME}/.ssh" do
  action :create
  owner WS_USER
  group "staff"
  mode "0700"
end

file "#{WS_HOME}/.ssh/known_hosts" do
  action :create_if_missing
  owner WS_USER
  group "staff"
  mode "0644"
end

#User SSH Keys
keys = "#{WS_HOME}/.ssh/#{WS_USER}_rsa"
execute "create SSH keys for #{WS_USER}" do
  command "ssh-keygen -t rsa -N '' -f #{keys}"
  creates "#{keys}"
  user WS_USER
  group "staff"
  not_if "test -e #{keys}"
end