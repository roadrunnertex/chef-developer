#
# Cookbook Name:: chef-developer
# Recipe:: git
#
# Copyright (C) 2015 Dan Newburg
#
# All rights reserved - Do Not Redistribute
#

case node['platform_family']
when 'windows'
	windows_package "Git version #{node['chef-developer']['git_version']}" do
		source node['chef-developer']['git_url']
		installer_type :inno
		action :install
	end
end