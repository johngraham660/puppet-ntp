# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include ntp
class ntp {

  $ntp_service_enable = $::ntp::params::ntp_service_enable
  $ntp_service_ensure = $::ntp::params::ntp_service_ensure
  $ntp_config_servers = undef

}
