class mongo::install {
  package { "mongodb":
    ensure => present,
  }
}
