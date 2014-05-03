# configuer le produit ici
class mv_fail2ban::params {

  $packages = "fail2ban"
  $service_name = "fail2ban"
  $config_path = "/etc/fail2ban"

  # filters for services to monitor
  $all_filters = [
    {"name" => "ssh",             "enabled" => "true",  "config" => "" },
    {"name" => "pam-generic",     "enabled" => "true",  "config" => "" },
    {"name" => "xinetd-fail",     "enabled" => "true",  "config" => "" },
    {"name" => "ssh-ddos",        "enabled" => "true",  "config" => "" },
    # Apache
    {"name" => "apache",          "enabled" => "false", "config" => "" },
    {"name" => "apache-multiport","enabled" => "false", "config" => "" },
    {"name" => "apache-noscript", "enabled" => "false", "config" => "" },
    {"name" => "apache-overflows","enabled" => "false", "config" => "" },
    # FTP
    {"name" => "vsftpd",          "enabled" => "false", "config" => "" },
    {"name" => "wuftpd",          "enabled" => "false", "config" => "" },
    # Mail
    {"name" => "postfix",         "enabled" => "false", "config" => "" },
    {"name" => "couriersmtp",     "enabled" => "false", "config" => "" },
    {"name" => "courierauth",     "enabled" => "false", "config" => "" },
    {"name" => "sasl",            "enabled" => "false", "config" => "" },
  ]
}
