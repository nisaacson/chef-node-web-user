#
# Cookbook Name:: tabrific-web-user
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "tabrific-web-user::lowport"
group node[:web][:group] do
  action :create
end

user node[:web][:user] do
  home node[:web][:home]
  shell node[:web][:shell]
  comment "User to run web services"
  supports :manage_home => true
end
