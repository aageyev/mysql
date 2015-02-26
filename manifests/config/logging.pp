class mysql::config::logging (
  $ensure              = 'present',
  $general_log_file    = '/var/log/mysql/general.log',
  $general_log         = 0,
  $log_error           = '/var/log/mysql/error.log',
  $log_queries_not_using_indexes = 1,
  $long_query_time     = 1,
  $slow_query_log_file = '/var/log/mysql/slow_query.log',
  $slow_query_log      = 1) {
  file { '/etc/mysql/conf.d/mysqld-logging.cnf':
    ensure  => $ensure,
    owner   => 'root',
    group   => 'root',
    mode    => 0644,
    content => template("mysql/conf.d/mysqld-logging.cnf.erb"),
  }
}
