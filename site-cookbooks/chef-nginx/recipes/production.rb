template "#{node.nginx.dir}/sites-available/project.conf" do
  source 'project.conf.erb'
  mode '0644'
  notifies :reload, 'service[nginx]', :delayed
end

nginx_site 'project.conf'
