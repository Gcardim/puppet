class dockers {

$pacotes = ["apt-transport-https","ca-certificates","curl","software-properties-common"]
	 package {$pacotes:
	 ensure => present,
}
$comandos = "/usr/bin/curl -fsSl https://download.docker.com/linux/ubuntu/gpg | /usr/bin/apt-key add - ; /usr/bin/add-apt-repository 'deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable' ; /usr/bin/apt update -y"

exec { "rodando comandos":
	command => $comandos,
}

package {"docker-ce":
	ensure => present,
}
}
