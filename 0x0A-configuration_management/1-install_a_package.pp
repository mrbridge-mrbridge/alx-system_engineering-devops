# Using Puppet, install puppet-lint with given requirements

package { 'puppet-lint':
  ensure => ['2.5.0'],
}
