wordpress-nginx Cookbook
========================
Chef cookbook that Configures Nginx for a WordPress site with php-fpm.

Provides a base Nginx config for common WordPress settings at `/etc/nginx/wordpress.conf`.

Any sites specified through the attribute below will be added to `/etc/nginx/sites-available/wordpress` and include `wordpress.conf`.

The `wordpress` site will be enabled as well.

Requirements
------------

* nginx

Attributes
----------

Only one attribute. Default is:
```ruby
default['wordpress']['sites'] = {
  'default' => {
    'hosts' => 'localhost',
    'root'  => '/srv/www/default'
  }
}
```

Usage
-----
#### wordpress-nginx::default

Just include `wordpress-nginx` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[wordpress-nginx]"
  ]
}
```

Contributing
------------
1. Fork the repository on GitHub
2. Create a named feature branch (like `add_component_x`)
3. Write your change
6. Submit a Pull Request using GitHub

License and Authors
-------------------
See LICENSE.md
