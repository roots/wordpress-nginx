# wordpress-nginx Chef Cookbook

Chef cookbook that provides a LWRP for WordPress Nginx sites with PHP-FPM. Provides a base Nginx config for common WordPress settings at `/etc/nginx/wordpress.conf`.

## Requirements

* [nginx](http://community.opscode.com/cookbooks/nginx)
* [php-fpm](http://community.opscode.com/cookbooks/php-fpm)

## Attributes

* `node['wordpress_nginx']['fastcgi_read_timeout']` - Timeout for reading a response from the FastCGI server (default=`3600s`)
* `node['wordpress_nginx']['static_file_expiry']` - Expiry time for static assets `js|css|png|jpg|jpeg|gif|ico` (default=`24h`)
* `node['wordpress_nginx']['php_fpm']['listen']` - Listen socket for PHP-FPM (default=`/var/run/php-fpm-www.sock`)

## Usage

Basic usage with only host and document root:

```ruby
wordpress_nginx_site 'example.com' do
  host 'example.com'
  root '/srv/www/example.com'
end
```

This resource would create an Nginx site at `/etc/nginx/sites-available/example.com` and enable it.

If you need to add additional custom config options, you can use the `code` attribute:

```ruby
wordpress_nginx_site 'example.com' do
  host 'example.com'
  root '/srv/www/example.com'
  code "include #{node['nginx']['dir']}/custom.conf;"
  notifies :reload, 'service[nginx]'
end
```

## CHANGELOG

* [2013-01-08] Removed usage of `node['php-fpm']['pool']['www']['listen']` attribute (removed from php-fpm cookbook as of 0.6.3). Replaced with local attribute `node['wordpress_nginx']['php_fpm']['listen']`.

## Contributing

1. Fork the repository
2. Create a named feature branch (like `add_component_x`)
3. Commit your changes
4. Submit a pull request

## License and Authors

See [LICENSE](LICENSE.md)
