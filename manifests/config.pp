class mysql::config ($ensure = 'present', $innodb_buffer_pool_size = '512M',) {
  file { '/etc/mysql/my.cnf':
    ensure  => $ensure,
    owner   => 'root',
    group   => 'root',
    mode    => 0644,
    content => template("mysql/my.cnf.erb"),
  }
}
