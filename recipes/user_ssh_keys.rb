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
execute "create SSH keys for #{WS_USER}" do
  command "ssh-keygen -t rsa -N '' -f #{WS_HOME}/.ssh/#{WS_USER}"
  user WS_USER
  not_if "test -e #{WS_HOME}/.ssh/#{WS_USER}_rsa"
end