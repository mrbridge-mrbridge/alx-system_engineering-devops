-- fix nginx web server to avoid failed requests

exec { 'restart-nginx':
  command => 'systemctl restart nginx',
  path    => '/usr/local/bin'
}
