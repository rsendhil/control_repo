class profile::base {
  user { 'root':
    ensure => present,
  }
  
  yumrepo { 'docker-ce-stable':
    descr    => 'Docker CE Stable - $basearch',
    baseurl  => 'https://download.docker.com/linux/centos/7/$basearch/stable',
    gpgkey   => 'https://download.docker.com/linux/centos/gpg',
    gpgcheck => true,
  }
}
