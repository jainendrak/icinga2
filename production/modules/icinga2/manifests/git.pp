class icinga2::git inherits icinga2::params
{
#file { "/opt/icingaweb2/" :
#	ensure => 'direcory' ,
#	mode => '755',
#	recurse => true,
#	source => "puppet://///modules/icinga2/files/icingaweb2" ,
#	}
vcsrepo { '/opt/icingaweb2':
  ensure   => present,
  provider => git,
#  mode => '755',  
  source   => "git@github.com:Icinga/icingaweb2.git",
  require => Service[$icinga2_service],
	}

	notify { " Cloning GIT REPO ........ " : }
}
