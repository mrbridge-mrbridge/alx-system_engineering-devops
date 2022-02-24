# Increases the amount of traffic an Nginx server can handle.

# Increase the ULIMIT of the default file
exec { 'fix--for-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/bin/'
} ->

# Restart Nginx
exec { 'restart-nginx':
  command => 'service nginx restart',
  path    => '/usr/bin/'
}
