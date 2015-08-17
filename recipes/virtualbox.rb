#
# Cookbook Name:: chef-developer
# Recipe:: virtualbox
#
# Copyright (C) 2015 Dan Newburg
#
# All rights reserved - Do Not Redistribute
#

case node['platform_family']
when 'windows'
	windows_package "Oracle VM VirtualBox #{node['chef-developer']['virtualbox_version']}" do
		source node['chef-developer']['virtualbox_url']
		options "-s"
		installer_type :custom
		action :install
	end
end