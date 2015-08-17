#
# Cookbook Name:: chef-developer
# Recipe:: default
#
# Copyright (C) 2015 Dan Newburg
#
# All rights reserved - Do Not Redistribute
#

include_recipe "chef-developer::chefdk"
include_recipe "chef-developer::vagrant"
include_recipe "chef-developer::virtualbox"
include_recipe "chef-developer::sublimetext"
include_recipe "chef-developer::git"