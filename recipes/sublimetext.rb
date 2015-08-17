#
# Cookbook Name:: chef-developer
# Recipe:: sublimetext
#
# Copyright (C) 2015 Dan Newburg
#
# All rights reserved - Do Not Redistribute
#

case node['platform_family']
when 'windows'
	windows_package "Sublime Text #{node['chef-developer']['sublimetext_version']}" do
		source node['chef-developer']['sublimetext_url']
		installer_type :inno
		action :install
	end
end