class mv_fail2ban::service {

	service { "mv_fail2ban":
		name => $mv_fail2ban::service_name,
		ensure => running,
		require => Package["mv_fail2ban"],
	}
}
