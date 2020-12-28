# @summary
#   Operating system-related variables (and others)
#
class apache::params {
  $install_ensure = 'present'
  case $::osfamily {
    'Debian': {
      $install_name = 'apache2'
    }
    'Redhat': {
      $install_name = 'httpd'
    }
  }
}
