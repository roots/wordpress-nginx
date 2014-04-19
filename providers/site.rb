#
# Cookbook Name:: wordpress_nginx
# Provider:: site
#

action :create do
  template "#{node['nginx']['dir']}/wordpress.conf" do
    source   'wordpress-common.erb'
    owner    'root'
    group    'root'
    mode     00644
    cookbook 'wordpress_nginx'
  end

  template "#{node['nginx']['dir']}/sites-available/#{new_resource.name}" do
    source   'wordpress-sites.erb'
    owner    'root'
    group    'root'
    mode     00644
    cookbook 'wordpress_nginx'
    variables(
      :name => new_resource.name,
      :host => new_resource.host,
      :root => new_resource.root,
      :code => new_resource.code
    )
  end

  nginx_site new_resource.name do
    enable true
  end

  new_resource.updated_by_last_action(true)
end

