-- fix nginx web server to avoid failed requests

exec { 'fix-nginx':
  command => 'sudo systemctl reload nginx',
  path    => '/usr/bin'
}
