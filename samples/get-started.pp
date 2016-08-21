# Simple Puppet manifest
file { 'motd':
  ensure  => present,
  owner   => 'root',
  group   => 'root',
  content => 'This is a Demo system to show WebLogic being provisioned with Puppet',
  path    => '/etc/motd/',
}

group { 'demo':
  ensure => present,
}

user { 'demo':
  ensure     => present,
  comment    => 'demo user for puppet demo',
  home       => '/home/demo',
  managehome => true,
  require    => Group['demo'],
}
