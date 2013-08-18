#
# Cookbook Name:: wordpress_nginx
# Resource:: site
#

actions :create

default_action :create

attribute :host, :kind_of => String, :default => 'localhost'
attribute :root, :kind_of => String, :default => nil
attribute :code, :kind_of => String, :default => nil

