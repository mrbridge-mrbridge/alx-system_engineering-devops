# fix server to be able to handle higher number of requests

# set nginx ulimit 
exec { 'fix--for-nginx':
  command => 'sed "s/^# End/i \* soft nofile 655360\n\* hard nofile 655360" /etc/security/limits.conf',
  path    => '/bin/'
} ->

# Restart Nginx
exec { 'restart-nginx':
  command => 'service nginx restart',
  path    => '/usr/bin/'
}
