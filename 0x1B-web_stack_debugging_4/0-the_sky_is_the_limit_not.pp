# fix nginx web server to avoid failed requests

# set ulimit
exec { 'set-ulimit':
  command => 'sed "s/15/i 5000" /etc/default/nginx',
  path    => '/usr/local/bin'
}->

# restart nginx
exec { 'restart-nginx':
  command => 'service nginx restart',
  path    => '/usr/local/bin'
}
