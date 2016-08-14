class role::wlsadmin {

  include profile::prerequisites
  include profile::wlsinstall
  include profile::wlsdomain
  include profile::wlsstart

  Class['profile::prerequisites'] ->
  Class['profile::wlsinstall'] ->
  Class['profile::wlsdomain'] ->
  Class['profile::wlsstart'] 

}
