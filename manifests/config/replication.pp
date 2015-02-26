class mysql::config::replication (
  $ensure                   = 'present',
  $server_id                = 1,
  $server_name              = 'db',
  $binlog_format            = 'mixed',
  $replicate_same_server_id = 0,
  $auto_increment_increment = 2,
  $auto_increment_offset    = 1) {
  file { '/etc/mysql/conf.d/mysqld-replication.cnf':
    ensure  => $ensure,
    owner   => 'root',
    group   => 'root',
    mode    => 0644,
    content => template("mysql/conf.d/mysqld-replication.cnf.erb"),
  }
}
