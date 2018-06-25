class exec {

case $::osfamily {
      "RedHat": {
		$pacotes = ["git","cronie","httpd"]
                }
      "Debian": {
		$pacotes = ["git","cron","apache2"]

		}	
}
		package { $pacotes:
			  ensure => present,
			}
		  

$user = ["devops","jorge","judith"]
        user { $user:
	ensure => present,
	}

file { '/root/.bashrc':
	source => "puppet:///modules/exec/bashrc",
	ensure => present,
}
}


