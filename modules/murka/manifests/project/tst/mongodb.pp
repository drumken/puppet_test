class murka::project::tst::mongodb {
  include murka::location::nb_vm
  class {'murka::services::mongodb':
    dbpath => '/var/lib/mongodb',
    logpath => '/var/log/mongodb/mongodb.log',
    appendlogs => true,
    ip         => '0.0.0.0', 
    port       => '27017',
    replset    => 'rs0',
  }
}
