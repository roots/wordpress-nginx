wordpress-nginx Cookbook
========================
Configures Nginx for a WordPress site with php-fpm

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
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
6. Submit a Pull Request using Github

License and Authors
-------------------
See LICENSE.md
