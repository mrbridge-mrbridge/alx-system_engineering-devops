# fix nginx web server to avoid failed requests

# set ulimit
exec { 'set-nginx-ulimit':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/usr/bin/:bin/'
} ->

# restart nginx
exec { 'restart-nginx':
  command => 'service nginx restart',
  path    => '/usr/local/bin/'
}
