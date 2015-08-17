#
# Cookbook Name:: chef-developer
# Recipe:: vagrant
#
# Copyright (C) 2015 Dan Newburg
#
# All rights reserved - Do Not Redistribute
#

file node['chef-developer']['vagrant_version_file'] do
	action :nothing
end

execute 'Vagrant WinRM Configuration' do
	command 'vagrant plugin install vagrant-winrm'
	notifies :create, "file[#{node['chef-developer']['vagrant_version_file']}]", :immediately
	not_if {::File.exists?(node['chef-developer']['vagrant_version_file'])}
	action :nothing
end

case node['platform_family']
when 'windows'
	windows_package 'Vagrant' do 
		source node['chef-developer']['vagrant_url']
		installer_type :msi
		notifies :run, "execute[Vagrant WinRM Configuration]", :immediately
		action :install
	end
end