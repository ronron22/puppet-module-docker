class docker::install (
        $enable                                         = $::docker::params::enable,
)
        {
        if $enable {
            package { 'docker':
               ensure  => present,
            }
            service { 'docker':
              ensure  => running,
              enable  => true,
            }
        }
}
