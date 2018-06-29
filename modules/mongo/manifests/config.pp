define mongo::config( $dbpath, $logpath, $appendlogs=true, $ip, $port ) {

  include mongo

  file {"/etc/mongodb.conf":
    content => template('/etc/puppet/modules/mongo/templates/mongodb.conf.erb'),
    owner => 'root',
    group => 'root',
    mode => '644',
    require => Class["mongo::install"],
    notify => Class["mongo::service"],
  }
}
