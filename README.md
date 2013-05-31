wordpress-nginx Cookbook
========================
Configures Nginx for a WordPress site with php-fpm

Requirements
------------

* nginx

Attributes
----------

e.g.
#### wordpress-nginx::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['wordpress-nginx']['sites']</tt></td>
    <td>Hash</td>
    <td>Sites to create and enable</td>
    <td>
      ```ruby
        'default' => {
          'hosts' => 'localhost',
          'root'  => '/srv/www/default'
        }
      ```
    </td>
  </tr>
</table>

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
