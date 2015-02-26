class mysql::config::tuning (
  $ensure              = 'present',
  $key_buffer_size     = '16M',
  $max_allowed_packet  = '64M',
  $thread_stack        = '192K',
  $thread_cache_size   = 8,
  $max_connections     = 50,
  $query_cache_type    = 1,
  $query_cache_limit   = '1M',
  $query_cache_size    = '16M',
  $tmp_table_size      = '32M',
  $max_heap_table_size = '16M') {
  file { '/etc/mysql/conf.d/mysqld-tuning.cnf':
    ensure  => $ensure,
    owner   => 'root',
    group   => 'root',
    mode    => 0644,
    content => template("mysql/conf.d/mysqld-tuning.cnf.erb"),
  }
}
