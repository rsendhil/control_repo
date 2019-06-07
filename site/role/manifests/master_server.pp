class role::master_server {
  include profile::base
  package { 'docker':
    ensure => 'absent',
  }
#  include profile::agent_nodes
}
