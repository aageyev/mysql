class mysql::config::innodb ($ensure = 'present', $innodb_buffer_pool_size = '512M') {
  file { '/etc/mysql/conf.d/mysqld-innodb.cnf':
    ensure  => $ensure,
    owner   => 'root',
    group   => 'root',
    mode    => 0644,
    content => template("mysql/conf.d/mysqld-innodb.cnf.erb"),
  }
}
