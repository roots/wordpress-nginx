default['wordpress-nginx']['fastcgi_read_timeout'] = '3600s'
default['wordpress-nginx']['static_file_expiry'] = '24h'
default['wordpress-nginx']['php_fpm']['listen'] = '/var/run/php-fpm-www.sock'

