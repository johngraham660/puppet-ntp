# ================================================
# A class to manage the NTP service on Linux hosts
# ================================================
# @param ntp_service_enable [Boolean] Ensure the service is enabled in systemd
# @param ntp_service_ensure [String] Ensure the service is running
# @param ntp_config_servers [string] A list of one or more NTP servers

class ntp (

  $ntp_service_enable = $::ntp::params::ntp_service_enable,
  $ntp_service_ensure = $::ntp::params::ntp_service_ensure,
  $ntp_config_servers = undef,

) inherits ntp::params {

  include ntp::install
  include ntp::config
  include ntp::service

  validate_bool($ntp_service_enable)
  validate_re($ntp_service_ensure, [ '^running$', '^stopped$' ])
}

