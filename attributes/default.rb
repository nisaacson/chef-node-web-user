node.default[:web][:user] = 'web'
node.default[:web][:group] = 'www'
node.default[:web][:shell] = '/bin/bash'
node.default[:web][:home] = "/home/#{node[:web][:user]}"
