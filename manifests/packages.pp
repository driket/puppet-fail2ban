class mv_fail2ban::packages {
	require('mv_fail2ban::params')

	package {"mv_fail2ban":
		name => $mv_fail2ban::packages,
		ensure => present,
	}

}
