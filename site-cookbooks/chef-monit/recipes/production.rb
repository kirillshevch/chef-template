%w(nginx.conf puma.conf).each do |conf_file|
  cookbook_file "/etc/monit/conf.d/#{conf_file}" do
    user 'root'
    group 'root'
    mode '0655'
    notifies :restart, resources(service: 'monit'), :delayed
  end
end
