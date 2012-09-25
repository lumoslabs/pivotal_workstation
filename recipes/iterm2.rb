unless File.exists?(node["iterm2_app_path"])

  remote_file "#{Chef::Config[:file_cache_path]}/iTerm2.zip" do
    source node["iterm2_download_url"]
    owner WS_USER
    checksum node["iterm2_checksum"]
  end

  execute "unzip iterm2" do
    command "sudo unzip -o #{Chef::Config[:file_cache_path]}/iTerm2.zip -d #{Chef::Config[:file_cache_path]}/"
    user WS_USER
  end

  execute "copy iterm2 to /Applications" do
    command "sudo mv #{Chef::Config[:file_cache_path]}/iTerm.app #{Regexp.escape(node["iterm2_app_path"])}"
    user WS_USER
    group "admin"
  end

end
