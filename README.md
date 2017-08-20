# chef-template

Chef Solo config for management servers with Ruby/Rack based applications

## Tutorial

[Using Chef and Capistrano to deploy a Rails application on Ubuntu 16.04](https://medium.com/@kirill_shevch/using-chef-and-capistrano-to-deploy-rails-application-on-ubuntu-16-04-fae1dfe0dd12)

## Stack
* Ubuntu 16.04
* PostgreSQL
* Redis
* Monit
* RVM
* Node.js
* Nginx
* Ncdu

## Usage

Insert machine IP into next files:

[nginx](https://github.com/kirillweb/chef-template/blob/master/site-cookbooks/chef-nginx/templates/project.conf.erb#L8)

[nginx](https://github.com/kirillweb/chef-template/blob/master/site-cookbooks/chef-nginx/templates/project.conf.erb#L16)

[node](https://github.com/kirillweb/chef-template/blob/master/nodes/machine.ip.json#L9)

```bash
cp nodes/machine.ip.json nodes/my_new_node.json
```

Replace passwords into base [role](https://github.com/kirillweb/chef-template/blob/master/roles/base.json) and run:

```bash
bundle exec knife solo bootstrap root@ip nodes/my_new_node.json
```

## License

The template is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
