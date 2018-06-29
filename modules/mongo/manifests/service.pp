class mongo::service {
  service { "mongodb":
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    enable => true,
    require => Class["mongo::install"],
  }
}
