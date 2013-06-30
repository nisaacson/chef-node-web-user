# node-web-user cookbook

Setup a user account to run node.js processes.

If your node.js scripts need to listen on a low port but you don't want to run them as root, check out [lowport-node](https://github.com/nisaacson/lowport-node)

# Requirements

You can use this recipe when provisioning a chef node with the recipe `node-web-user::default`.

You can also test out the cookbook using [Vagrant](http://www.vagrantup.com/). Execute the following in the root directory of this repo

```bash
# create and provision a new virtual machine with vagrant
vagrant up
# log into the virtual machine
vagrant ssh
# make sure the web user was created
cd /home/web
ls -la
```

# Usage

# Attributes

By default this cookbook will create a user with username: `web`, group: `www`, shell: `/bin/bash`, and a home directory of `/home/web`

```ruby
node.default[:web][:user] = 'web'
node.default[:web][:group] = 'www'
node.default[:web][:shell] = '/bin/bash'
node.default[:web][:home] = "/home/#{node[:web][:user]}"
```

# Recipes

* node-web-user::default - creates a user and group. See `./attributes/default.rb` for more information
# Author

Author:: Noah Isaacs (<YOUR_EMAIL>)
