node default {
  include 'docker'
  docker::image { 'ubuntu':
    image_tag => 'trusty',
  }
}

node 'master.puppet.vm' {
  include role::master_server
}

node /^web+$/ {
  include role::app_server
}

node /^db+$/ {
  include role::db_server
}
