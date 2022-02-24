# fix nginx web server to avoid failed requests

# set ulimit
exec { 'set-ulimit':
  command => 'sed "s/^# End of file/i \* soft nofile 655360\n\* hard nofile 655360\n\* soft nproc 655360\n\* hard nproc 655360\n" /etc/security/limits.conf',
  path    => '/usr/local/bin'
}->

# restart nginx
exec { 'restart-nginx':
  command => 'service nginx restart',
  path    => '/usr/local/bin'
}
