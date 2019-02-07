# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include couchbase
class couchbase(
  String $config_dir,
) {
  # creating main directory
  file { $config_dir:
    ensure  => directory,
    owner   => 'couchbase',
    group   => 'couchbase',
    require => User['couchbase'],
  }
}
