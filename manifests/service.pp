# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include ntp::service
class ntp::service inherits ntp {

  service { 'ntp':
    ensure => 'running'
  }
}
