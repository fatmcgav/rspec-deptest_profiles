class deptest_profiles::software::glassfish {
  # Anchor the class to ensure it's contained
  anchor { 'deptest_profiles::software::glassfish::begin': }

  anchor { 'deptest_profiles::software::glassfish::end': }

  # Create Glassfish group and user
  group { 'glassfish':
    ensure  => 'present',
    require => Anchor['deptest_profiles::software::glassfish::begin']
  }

  # Create the required user.
  user { 'glassfish':
    ensure     => 'present',
    managehome => true,
    comment    => 'Glassfish user account',
    gid        => 'glassfish',
    require    => Group['glassfish']
  }

  # Install JDK
  #package { $java_version: ensure => present }

  #
  # # Setup Glassfish
  #
  class { '::glassfish':
    java_ver        => 'java-7-openjdk',
    manage_accounts => false,
    #require         => Package[$java_version],
    before          => Anchor['deptest_profiles::software::glassfish::end']
  }
}
