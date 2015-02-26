class mysql::config::debian_sys_maint ($ensure = 'present', $password = '') {
  file { '/etc/mysql/debian.cnf':
    ensure  => $ensure,
    owner   => 'root',
    group   => 'root',
    mode    => 0644,
    content => template("mysql/debian.cnf.erb"),
  }
}
