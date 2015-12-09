class profile::wlsdomain {
  orawls::domain { 'wlsDomain12c':
    version                     => 1213,  # 1036|1111|1211|1212|1213
    weblogic_home_dir           => "/opt/oracle/middleware12c/wlserver",
    middleware_home_dir         => "/opt/oracle/middleware12c",
    jdk_home_dir                => "/usr/java/jdk1.7.0_71",
    domain_template             => "standard",  #standard|adf|osb|osb_soa|osb_soa_bpm|soa|soa_bpm
    domain_name                 => "Wls12c",
    development_mode            => false,
    adminserver_name            => "AdminServer",
    adminserver_address         => "localhost",
    adminserver_port            => 7001,
    nodemanager_secure_listener => true,
    nodemanager_port            => 5556,
    java_arguments              => { "ADM" => "...", "OSB" => "...", "SOA" => "...", "BAM" => "..."},
    weblogic_user               => "weblogic",
    weblogic_password           => "weblogic1",
    os_user                     => "oracle",
    os_group                    => "dba",
    download_dir                => "/app/software",
    log_output                  => true,
  }
}
