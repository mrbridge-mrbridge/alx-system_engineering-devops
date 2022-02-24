# Change OS configuration to login with the holberton user
# to also open a file without any error message

# Increase hard file limit
exec { 'hard-file-limit':
  command => 'sed -i "/holberton hard/s/5/50000/" /etc/security/limits.conf',
  path    => '/bin/'
}

# Increase soft file limit
exec { 'soft-file-limit':
  command => 'sed -i "/holberton soft/s/4/50000/" /etc/security/limits.conf',
  path    => '/bin/'
}
