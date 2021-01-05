class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  
  service {'sshd':
    ensure => running,
    enable => true,
  }
  
  ssh_authorized_key {'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDQLZiXhZeOhVAf/t32uJ3oQ104fRUMR6EbpZ79LLlp03FhamaQdFyFhKOT/z6wcKMRQvDx99ToOvxy8xMsRFdP+Hqbg5swdA9R3v9BAOdzX25mxYUy2JrDB++RsHJmpXAufQSHUjygG8JapEdG7vAdOWzajdlq2lrDy8Oq6RXmLqlMHNc2Y0T/WVY0V2atoyOyLTV1+P970NYPFfATivnXOuzDbK0WFbiUKKKwtJMmalxdm1vtoHlNhQczNYA2I0rsS/0adT+OD9B0OP0E677ytF+G3Cz5FXNWBjPf5JPl0KmMWNRWcT0vgEDlFzdC2yiJBgDvQ6ypK6Z4Xv8vj8UZ',
  }
}
