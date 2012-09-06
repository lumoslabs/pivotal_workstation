pivotal_workstation_package "JavaForMacOSX10.7" do
  source "http://support.apple.com/downloads/DL1421/en_US/"
  volumes_dir "Java for Mac OS X 10.7"
  action :install
  type "pkg"
  package_id "com.apple.pkg.JavaForMacOSX107"
  checksum "817ea23add35a71b9b217a05eeb7862cd3b815246b1bfca35ba54480181362fd"
end
