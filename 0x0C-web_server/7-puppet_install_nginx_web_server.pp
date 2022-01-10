# puppet manifest that installs nginx
# prints 'hello world!' on default page

package { 'nginx':
  ensure  => '1.18.0-0ubuntu1.2',
}
file { '/var/www/html/index.nginx-debian.html':
  ensure  => 'file',
  content => 'Hello World!',
  type	  => 'file',
}

file_line { 'redirect':
  ensure  => 'present'
  path	  => '/etc/nginx/sites-available/default'
  line	  => 'location /redirect_me {\n\treturn 301 https://github.com/mrbridge-mrbridge;\n}',
}
