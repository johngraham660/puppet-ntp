# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include ntp::params
class ntp::params {
  $ntp_service_enable = true
  $ntp_service_ensure = 'running'
  $ntp_config_servers = undef
}
