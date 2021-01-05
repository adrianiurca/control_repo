class profile::ssh_server {
  package {'openssh-server':
    ensure => latest,
  }
}
