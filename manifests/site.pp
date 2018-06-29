 class helloworld {
    user { 'glscott_user':
      name       => 'glscott',
      groups     => 'sudo',
      managehome => true,
      password   => '$1$IQlzZO2w$xAwn8Rp/oUePVf6aqtjIj1',
      ensure     => present,
  }
 }


 node default {
    include helloworld, ssh
    package {'iftop':
    ensure => present,
  }
    package {'htop':
    ensure => present,
  }
 }

 node "puppet-agent1" {
    include mongo

    mongo::config { 'kyky':
      dbpath     => '/var/lib/mongodb',
      logpath    => '/var/log/mongodb/mongodb.log',
      appendlogs => true,
      ip         => '0.0.0.0', 
      port       => '27017',
    }
 }

 node "puppet-agent2" {
    include mongo

    mongo::config { 'kyky2':
      dbpath     => '/var/lib/mongodb',
      logpath    => '/var/log/mongodb/mongodb.log',
      appendlogs => true,
      ip         => $ipaddress,
      port       => '27999',
    }
 }
