#
# Cookbook Name:: chef-developer
# Recipe:: chefdk
#
# Copyright (C) 2015 Dan Newburg
#
# All rights reserved - Do Not Redistribute
#

case node['platform_family']
when 'windows'
	windows_package "Chef Development Kit v#{node['chef-developer']['chefdk_version']}" do
		source node['chef-developer']['chefdk_windows_url']
		installer_type :msi	
		action :install
	end

when 'rhel'

end