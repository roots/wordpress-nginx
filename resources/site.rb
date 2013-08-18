#
# Cookbook Name:: wordpress_nginx
# Resource:: site
#

actions :create

default_action :create

attribute :host, :kind_of => String, :default => node['wordpress_nginx']['default_host']
attribute :root, :kind_of => String, :default => nil
attribute :code, :kind_of => String, :default => nil

