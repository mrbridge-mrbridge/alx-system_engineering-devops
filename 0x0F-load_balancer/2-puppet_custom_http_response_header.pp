# puppet manifest that installs nginx
# automate the task of creating a custom HTTP header response, but with Puppet.
# The name of the custom HTTP header must be X-Served-By
# The value of the custom HTTP header must be the hostname of
# the server Nginx is running on
# prints 'hello world!' on default page

package { 'nginx':
  ensure => installed,
}

file_line { 'redirect':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'listen 80 default_server;',
  line   => 'rewrite ^/redirect_me https://github.com/mrbridge-mrbridge permanent;',
}

file_line { 'add_header':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'listen [::]:80 default_server;',
  line   => 'add_header	X-Served-By $HOSTNAME;',
}

file { '/var/www/html/index.html':
  content => 'Hello World!',
}

service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}
