#
# Cookbook Name:: node-web-user
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
group node[:web][:group] do
  action :create
end

user node[:web][:user] do
  home node[:web][:home]
  shell node[:web][:shell]
  comment "User to run node.js web services"
  supports :manage_home => true
end
