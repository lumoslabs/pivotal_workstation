include_recipe "pivotal_workstation::homebrew"
include_recipe "pivotal_workstation::rvm"
include_recipe "pivotal_workstation::git"
include_recipe "pivotal_workstation::vim"
include_recipe "pivotal_workstation::mysql"
include_recipe "pivotal_workstation::user_ssh_keys"

#Gems
include_recipe "pivotal_workstation::git_config_global_defaults"
include_recipe "pivotal_workstation::gem_no_rdoc_no_ri"
include_recipe "pivotal_workstation::qt"
include_recipe "pivotal_workstation::redis"
include_recipe "pivotal_workstation::freeimage"
include_recipe "pivotal_workstation::wget"
include_recipe "pivotal_workstation::node_js"

#Bash profiles
include_recipe "pivotal_workstation::workspace_directory"
include_recipe "pivotal_workstation::bash_profile-defaults"
include_recipe "pivotal_workstation::bash_profile-no_sudo_gem_install"
include_recipe "pivotal_workstation::bash_profile-unset-prompt-cmd"
include_recipe "pivotal_workstation::bash_profile-mysql_libs"
include_recipe "pivotal_workstation::bash_profile-ulimit_rspec"