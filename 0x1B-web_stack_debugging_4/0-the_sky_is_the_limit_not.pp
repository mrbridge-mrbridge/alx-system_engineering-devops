-- fix nginx web server to avoid failed requests

exec { 'set-ulimit':
  command => 'sed "s/# End of file/* soft nofile 655360\n* hard nofile 655360\n* soft nproc 655360\n* hard nproc 655360\n# End of file/g" /etc/security/limits.conf',
  path    => '/usr/bin'
}->

exec { 'restart-nginx':
  command => 'systemctl restart nginx',
  path    => '/usr/bin'
}
