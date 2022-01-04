# create a file in /tmp with requirements as given

file { 'school':
  ensure  => 'present',
  content => 'I love Puppet',
  mode    => '0744',
  owner   => 'www_data',
  group   => 'www-data',
  path    => '/tmp/school',
}
