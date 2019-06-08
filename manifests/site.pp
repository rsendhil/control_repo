node default {
}

node 'puppetserver.otjs-cloud-poc.com' {
  include role::master_server
}

node 'puppetclient.otjs-cloud-poc.com' {
  include role::app_server
}

node /^web+$/ {
  include role::app_server
}

node /^db+$/ {
  include role::db_server
}
