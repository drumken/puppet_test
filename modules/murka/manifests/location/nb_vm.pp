class murka::location::nb_vm {
  package {'iftop':
    ensure => present,
  }
  package {'htop':
    ensure => present,
  }
  package {'atop':
    ensure => present,
  }
}
