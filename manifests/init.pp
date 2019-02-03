# ================================================
# A class to manage the NTP service on Linux hosts
# ================================================
# @param ntp_service_enable [Boolean] Ensure the service is enabled in systemd
# @param ntp_service_ensure [String] Ensure the service is running
# @param ntp_config_servers [string] A list of one or more NTP servers

class ntp (

  Boolean $ntp_service_enable,
  Enum['running', 'stopped'] $ntp_service_ensure,
  Array $ntp_config_servers,

) {
  include ntp::install
  include ntp::config
  include ntp::service
}

