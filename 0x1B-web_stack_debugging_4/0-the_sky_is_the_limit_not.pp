# fix server to be able to handle higher number of requests

# set nginx ulimit 
exec { 'fix-nginx':
  command => 'sed -i "s/15/5000/" /etc/default/nginx',
  path    => '/bin/'
} ->

# Restart Nginx
exec { 'restart-nginx':
  command => 'service nginx restart',
  path    => '/usr/bin/'
}
