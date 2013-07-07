define mv_fail2ban::configuration ($filters = $mv_fail2ban::all_filters) {
	require('mv_fail2ban::packages')
	require('mv_fail2ban')

    file {"jail.conf": 
		path => "${mv_fail2ban::config_path}/jail.local",
        ensure => file,
        content => template("mv_fail2ban/jail.local.erb"),
        mode => "0644",
        owner => 'root',
        group => 'root',
		require => Package["mv_fail2ban"],
        notify => Service["mv_fail2ban"],
    }
}