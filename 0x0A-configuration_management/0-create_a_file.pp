# create a file in /tmp with requirements as given

file { 'school':
  content => 'I love Puppet',
  permission => '0744',
  owner => 'www_data',
  group => 'data',
  path => '/tmp/school',
}
