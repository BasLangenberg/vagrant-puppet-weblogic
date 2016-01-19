class profile::wlsinstall {

  jdk7::install7{ 'jdk1.7.0_71':
    version                     => "7u71" ,
    full_version                => "jdk1.7.0_71",
    alternatives_priority       => 18000,
    x64                         => true,
    download_dir                => "/app/software",
    urandom_java_fix            => true,
    rsa_key_size_fix            => false,
    source_path                 => "/app/software",
  }

  class{'orawls::weblogic':
    version              => 1213,                       # 1036|1211|1212|1213|1221
    filename             => 'fmw_12.1.3.0.0_wls.jar',   # wls1036_generic.jar|wls1211_generic.jar|wls_121200.jar
    jdk_home_dir         => '/usr/java/jdk1.7.0_71',
    oracle_base_home_dir => "/opt/oracle",
    middleware_home_dir  => "/opt/oracle/middleware12c",
    weblogic_home_dir    => "/opt/oracle/middleware12c/wlserver",
    os_user              => "oracle",
    os_group             => "dba",
    download_dir         => "/app/software",
    source               => "/app/software",                 # puppet:///modules/orawls/ | /mnt |
    log_output           => true,
  }


}
