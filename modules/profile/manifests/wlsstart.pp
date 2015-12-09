class profile::wlsstart  {

  orawls::nodemanager{'nodemanager12c':
    version                     => 1213, # 1036|1111|1211|1212
    weblogic_home_dir           => "/opt/oracle/middleware12c/wlserver",
    middleware_home_dir         => "/opt/oracle/middleware12c",
    jdk_home_dir                => "/usr/java/jdk1.7.0_71",
    nodemanager_port            => 5556,
    nodemanager_secure_listener => false,
    domain_name                 => "Wls12c",
    os_user                     => "oracle",
    os_group                    => "dba",
    download_dir                => "/app/software",
    log_output                  => true,
    sleep                       => 20,
  }
  
  orawls::control{'startWLSAdminServer12c':
    domain_name                 => "Wls12c",
    server_type                 => 'admin',  # admin|managed
    target                      => 'Server', # Server|Cluster
    server                      => 'AdminServer',
    action                      => 'start',
    weblogic_home_dir           => "/opt/oracle/middleware12c/wlserver",
    middleware_home_dir         => "/opt/oracle/middleware12c",
    jdk_home_dir                => "/usr/java/jdk1.7.0_71",
    weblogic_user               => "weblogic",
    weblogic_password           => "weblogic1",
    adminserver_address         => 'localhost',
    adminserver_port            => 7001,
    nodemanager_port            => 5556,
    nodemanager_secure_listener => false,
    os_user                     => "oracle",
    os_group                    => "dba",
    download_dir                => "/app/software",
    log_output                  => true,
  }

}
