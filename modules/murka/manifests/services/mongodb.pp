class murka::services::mongodb (
  $dbpath     = '/var/lib/mongodb',
  $logpath    = '/var/log/mongodb/mongodb.log',
  $appendlogs = true,
  $ip         = '0.0.0.0', 
  $port       = '27017',
  $replset    = undef,
) {
    mongo::config { 'main':
      dbpath     => $dbpath,
      logpath    => $logpath,
      appendlogs => $appendlogs,
      ip         => $ip, 
      port       => $port,
      replset    => $replset,
    }
}
