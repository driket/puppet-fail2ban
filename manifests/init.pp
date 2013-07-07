class mv_fail2ban inherits mv_fail2ban::params {
	include mv_fail2ban::packages
	include mv_fail2ban::config
	include mv_fail2ban::service
}
