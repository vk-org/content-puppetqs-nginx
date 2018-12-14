# Manage the state of the nginx daemon
#
# @summary Manage the state of the nginx daemon
#
# @example
#   include nginx::service
class nginx::service (
  $service_name  = $nginx::params::service_name,
) inherits nginx::params {
  service { 'nginx_service':
    name       => $service_name,
    ensure     => $nginx::service_ensure,
    enable     => $nginx::service_enable,
    hasrestart => $nginx::service_hasrestart,
  }
}
