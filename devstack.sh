Last login: Thu Jan  5 10:32:02 on ttys005
Brians-MacBook-Pro-2:skilldirectory brianhoehnepro$ curl http://www.reddit.com/r/swgoh
Brians-MacBook-Pro-2:skilldirectory brianhoehnepro$ curl http://www.reddit.com/r/SWGalaxyOfHeroes
Brians-MacBook-Pro-2:skilldirectory brianhoehnepro$ curl http://www.reddit.com/r/SWGalaxyOfHeroes.json
Brians-MacBook-Pro-2:skilldirectory brianhoehnepro$ curl http://www.reddit.com/r/SWGalaxyOfHeroes/hot
Brians-MacBook-Pro-2:skilldirectory brianhoehnepro$ curl http://www.reddit.com/r/SWGalaxyOfHeroes/sticky
Brians-MacBook-Pro-2:skilldirectory brianhoehnepro$ curl http://www.reddit.com/r/SWGalaxyOfHeroes/.json
Brians-MacBook-Pro-2:skilldirectory brianhoehnepro$ git
  [Restored Jan 6, 2017, 8:06:13 AM]
Last login: Fri Jan  6 08:06:13 on ttys002
mclpcx015:skilldirectory brianhoehnepro$ cd
mclpcx015:~ brianhoehnepro$ ls
Applications		Documents		Library			Music			Pictures		README.md		bitbarplugins		eclipse			npm-debug.log		skilldirssh
Desktop			Downloads		Movies			MyPlayground.playground	Public			VirtualBox VMs		data			maryville		pubsub-index-service	test
mclpcx015:~ brianhoehnepro$ cd skilldirssh/
mclpcx015:skilldirssh brianhoehnepro$ ssh -i ~/skilldirssh/skilldirectorydev.pem ec2-user@54.91.229.122

Last login: Wed Jan  4 20:04:27 2017 from 12.160.138.2

       __|  __|_  )
       _|  (     /   Amazon Linux AMI
      ___|\___|___|

https://aws.amazon.com/amazon-linux-ami/2016.09-release-notes/
5 package(s) needed for security, out of 9 available
Run "sudo yum update" to apply all updates.
[ec2-user@ip-172-31-39-89 ~]$
[ec2-user@ip-172-31-39-89 ~]$ git clone https://github.com/maryvilledev/skilldirectoryinfra.git
-bash: git: command not found
[ec2-user@ip-172-31-39-89 ~]$ yum install git
Loaded plugins: priorities, update-motd, upgrade-helper
You need to be root to perform this command.
[ec2-user@ip-172-31-39-89 ~]$ sudo yum install git
Loaded plugins: priorities, update-motd, upgrade-helper
amzn-main/latest                                                                                                                                                                                                                                                     | 2.1 kB     00:00
amzn-updates/latest                                                                                                                                                                                                                                                  | 2.3 kB     00:00
Resolving Dependencies
--> Running transaction check
---> Package git.x86_64 0:2.7.4-1.47.amzn1 will be installed
--> Processing Dependency: perl-Git = 2.7.4-1.47.amzn1 for package: git-2.7.4-1.47.amzn1.x86_64
--> Processing Dependency: perl(Term::ReadKey) for package: git-2.7.4-1.47.amzn1.x86_64
--> Processing Dependency: perl(Git) for package: git-2.7.4-1.47.amzn1.x86_64
--> Processing Dependency: perl(Error) for package: git-2.7.4-1.47.amzn1.x86_64
--> Running transaction check
---> Package perl-Error.noarch 1:0.17020-2.9.amzn1 will be installed
---> Package perl-Git.noarch 0:2.7.4-1.47.amzn1 will be installed
---> Package perl-TermReadKey.x86_64 0:2.30-20.9.amzn1 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

============================================================================================================================================================================================================================================================================================
 Package                                                                 Arch                                                          Version                                                                       Repository                                                        Size
============================================================================================================================================================================================================================================================================================
Installing:
 git                                                                     x86_64                                                        2.7.4-1.47.amzn1                                                              amzn-main                                                         11 M
Installing for dependencies:
 perl-Error                                                              noarch                                                        1:0.17020-2.9.amzn1                                                           amzn-main                                                         33 k
 perl-Git                                                                noarch                                                        2.7.4-1.47.amzn1                                                              amzn-main                                                         64 k
 perl-TermReadKey                                                        x86_64                                                        2.30-20.9.amzn1                                                               amzn-main                                                         33 k

Transaction Summary
============================================================================================================================================================================================================================================================================================
Install  1 Package (+3 Dependent packages)

Total download size: 11 M
Installed size: 28 M
Is this ok [y/d/N]: y
Downloading packages:
(1/4): git-2.7.4-1.47.amzn1.x86_64.rpm                                                                                                                                                                                                                               |  11 MB     00:00
(2/4): perl-Error-0.17020-2.9.amzn1.noarch.rpm                                                                                                                                                                                                                       |  33 kB     00:00
(3/4): perl-Git-2.7.4-1.47.amzn1.noarch.rpm                                                                                                                                                                                                                          |  64 kB     00:00
(4/4): perl-TermReadKey-2.30-20.9.amzn1.x86_64.rpm                                                                                                                                                                                                                   |  33 kB     00:00
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Total                                                                                                                                                                                                                                                        17 MB/s |  11 MB  00:00:00
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : 1:perl-Error-0.17020-2.9.amzn1.noarch                                                                                                                                                                                                                                    1/4
  Installing : perl-TermReadKey-2.30-20.9.amzn1.x86_64                                                                                                                                                                                                                                  2/4
  Installing : git-2.7.4-1.47.amzn1.x86_64                                                                                                                                                                                                                                              3/4
  Installing : perl-Git-2.7.4-1.47.amzn1.noarch                                                                                                                                                                                                                                         4/4
  Verifying  : 1:perl-Error-0.17020-2.9.amzn1.noarch                                                                                                                                                                                                                                    1/4
  Verifying  : git-2.7.4-1.47.amzn1.x86_64                                                                                                                                                                                                                                              2/4
  Verifying  : perl-TermReadKey-2.30-20.9.amzn1.x86_64                                                                                                                                                                                                                                  3/4
  Verifying  : perl-Git-2.7.4-1.47.amzn1.noarch                                                                                                                                                                                                                                         4/4

Installed:
  git.x86_64 0:2.7.4-1.47.amzn1

Dependency Installed:
  perl-Error.noarch 1:0.17020-2.9.amzn1                                                         perl-Git.noarch 0:2.7.4-1.47.amzn1                                                         perl-TermReadKey.x86_64 0:2.30-20.9.amzn1

Complete!
[ec2-user@ip-172-31-39-89 ~]$ git clone https://github.com/maryvilledev/skilldirectoryinfra.git
Cloning into 'skilldirectoryinfra'...
remote: Counting objects: 4, done.
remote: Compressing objects: 100% (4/4), done.
remote: Total 4 (delta 0), reused 4 (delta 0), pack-reused 0
Unpacking objects: 100% (4/4), done.
Checking connectivity... done.
[ec2-user@ip-172-31-39-89 ~]$ git status
fatal: Not a git repository (or any of the parent directories): .git
[ec2-user@ip-172-31-39-89 ~]$ ls
skilldirectoryinfra
[ec2-user@ip-172-31-39-89 ~]$ cd skilldirectoryinfra/
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ ls
devstack.sh  docker-compose.yml
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ ./devstack.sh
Cannot connect to the Docker daemon. Is the docker daemon running on this host?
Cannot connect to the Docker daemon. Is the docker daemon running on this host?
Stopping skilldirectory_container...
Cannot connect to the Docker daemon. Is the docker daemon running on this host?
skilldirectory_container stopped.
./devstack.sh: line 45: docker-compose: command not found
c^C
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ ^C
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ docker ps
Cannot connect to the Docker daemon. Is the docker daemon running on this host?
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ yum install docker
Loaded plugins: priorities, update-motd, upgrade-helper
You need to be root to perform this command.
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ sudo yum install docker
Loaded plugins: priorities, update-motd, upgrade-helper
Package docker-1.11.2-1.6.amzn1.x86_64 already installed and latest version
Nothing to do
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ which dock
/usr/bin/which: no dock in (/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/aws/bin:/home/ec2-user/.local/bin:/home/ec2-user/bin)
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ which docker
/usr/bin/docker
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ service docker start
/etc/init.d/docker: line 35: ulimit: open files: cannot modify limit: Operation not permitted
Starting cgconfig service: Error: cannot create directory /cgroup/blkio
/sbin/cgconfigparser; error loading /etc/cgconfig.conf: Cgroup, operation not allowed
Failed to parse /etc/cgconfig.conf                         [FAILED]
Starting docker:	/etc/init.d/docker: line 69: /var/log/docker: Permission denied
touch: cannot touch ‘/var/lock/subsys/docker’: Permission denied
/etc/init.d/docker: line 70: /var/log/docker: Permission denied
..........                                                 [FAILED]
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ sudo service start docker
start: unrecognized service
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ sudo start docker
start: Unknown job: docker
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ sudo su -
[root@ip-172-31-39-89 ~]# service docker start
Starting cgconfig service:                                 [  OK  ]
Starting docker:	.                                  [  OK  ]
[root@ip-172-31-39-89 ~]# exit
logout
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ docker ps
Cannot connect to the Docker daemon. Is the docker daemon running on this host?
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ sudo usermod -aG docker ec2-user
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ docker ps
Cannot connect to the Docker daemon. Is the docker daemon running on this host?
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ exit
logout
Connection to 54.91.229.122 closed.
mclpcx015:skilldirssh brianhoehnepro$ ssh -i ~/skilldirssh/skilldirectorydev.pem ec2-user@54.91.229.122
Last login: Mon Jan  9 21:27:03 2017 from 12.160.138.2

       __|  __|_  )
       _|  (     /   Amazon Linux AMI
      ___|\___|___|

https://aws.amazon.com/amazon-linux-ami/2016.09-release-notes/
5 package(s) needed for security, out of 9 available
Run "sudo yum update" to apply all updates.
[ec2-user@ip-172-31-39-89 ~]$ docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
[ec2-user@ip-172-31-39-89 ~]$ cd skilldirectoryinfra/
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ ./devstack.sh
Error: No such image or container: cassandra_container
Error: No such image or container: skilldirectory_container
Stopping skilldirectory_container...
Error response from daemon: No such container: skilldirectory_container
skilldirectory_container stopped.
./devstack.sh: line 45: docker-compose: command not found
^C
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ ^C
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ docker run hello-world
Unable to find image 'hello-world:latest' locally
latest: Pulling from library/hello-world
c04b14da8d14: Pull complete
Digest: sha256:0256e8a36e2070f7bf2d0b0763dbabdd67798512411de4cdcf9431a1feb60fd9
Status: Downloaded newer image for hello-world:latest

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker Hub account:
 https://hub.docker.com

For more examples and ideas, visit:
 https://docs.docker.com/engine/userguide/

[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ sudo yum install docker-engine
Loaded plugins: priorities, update-motd, upgrade-helper
amzn-main/latest                                                                                                                                                                                                                                                     | 2.1 kB     00:00
amzn-updates/latest                                                                                                                                                                                                                                                  | 2.3 kB     00:00
No package docker-engine available.
Error: Nothing to do
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ curl -L https://github.com/docker/compose/releases/download/1.5.1/docker-compose-`uname -s`-`uname -m` > docker-compose
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   600    0   600    0     0   2723      0 --:--:-- --:--:-- --:--:--  2727
100 7738k  100 7738k    0     0  10.4M      0 --:--:-- --:--:-- --:--:-- 15.5M
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ sudo chown root docker-compose
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ sudo mv docker-compose /usr/local/bin
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ sudo chmod +x /usr/local/bin/docker-compose
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ docker-compose --help
Define and run multi-container applications with Docker.

Usage:
  docker-compose [-f=<arg>...] [options] [COMMAND] [ARGS...]
  docker-compose -h|--help

Options:
  -f, --file FILE           Specify an alternate compose file (default: docker-compose.yml)
  -p, --project-name NAME   Specify an alternate project name (default: directory name)
  --x-networking            (EXPERIMENTAL) Use new Docker networking functionality.
                            Requires Docker 1.9 or later.
  --x-network-driver DRIVER (EXPERIMENTAL) Specify a network driver (default: "bridge").
                            Requires Docker 1.9 or later.
  --verbose                 Show more output
  -v, --version             Print version and exit

Commands:
  build              Build or rebuild services
  help               Get help on a command
  kill               Kill containers
  logs               View output from containers
  pause              Pause services
  port               Print the public port for a port binding
  ps                 List containers
  pull               Pulls service images
  restart            Restart services
  rm                 Remove stopped containers
  run                Run a one-off command
  scale              Set number of containers for a service
  start              Start services
  stop               Stop services
  unpause            Unpause services
  up                 Create and start containers
  migrate-to-labels  Recreate containers to add labels
  version            Show the Docker-Compose version information
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ ./devstack.sh
Error: No such image or container: cassandra_container
Error: No such image or container: skilldirectory_container
Stopping skilldirectory_container...
Error response from daemon: No such container: skilldirectory_container
skilldirectory_container stopped.
ERROR: In file './docker-compose.yml' service 'version' doesn't have any configuration options. All top level keys in your docker-compose.yml must map to a dictionary of configuration options.
Running skilldirectoryschema...
Error response from daemon: No such container: cassandra_container
Schema update complete.
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
hello-world         latest              c54a2cc56cbb        6 months ago        1.848 kB
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ docker-compose --version
docker-compose version: 1.5.1
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ curl -L https://github.com/docker/compose/releases/download/1.9.0/docker-compose-`uname -s`-`uname -m` > docker-compose
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   600    0   600    0     0   4964      0 --:--:-- --:--:-- --:--:--  5000
100 7857k  100 7857k    0     0  13.1M      0 --:--:-- --:--:-- --:--:-- 17.6M
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ sudo mv docker-compose /usr/local/bin
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ sudo chmod +x /usr/local/bin/docker-compose
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ docker-compose -version
docker-compose version 1.9.0, build 2585387
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ ./devstack.sh
Error: No such image or container: cassandra_container
Error: No such image or container: skilldirectory_container
Stopping skilldirectory_container...
Error response from daemon: No such container: skilldirectory_container
skilldirectory_container stopped.
Creating network "skilldirectoryinfra_default" with the default driver
Pulling backend (maryville/skilldirectory:dev)...
dev: Pulling from maryville/skilldirectory
10e6c678e7af: Pull complete
da8f233a88a5: Pull complete
8e7d63e71a8f: Pull complete
b29dcc02a811: Pull complete
7ed6add7b5ec: Pull complete
d4a377c00329: Pull complete
52ca45443f72: Pull complete
43b3105b9d46: Pull complete
Digest: sha256:263aa2efee83deba026a499b6ef8b8542eb03a6e1a77e5a7174469b0a6a44dad
Status: Downloaded newer image for maryville/skilldirectory:dev
Pulling cassandra (maryville/skilldirectorycassandra:dev)...
dev: Pulling from maryville/skilldirectorycassandra
386a066cd84a: Pull complete
e4bd24d76b78: Pull complete
5ccb1c317672: Pull complete
a7ffd548f738: Pull complete
d6f6138be804: Pull complete
756363f453c9: Pull complete
075f05dfd2b8: Pull complete
15e5f7e20bc5: Pull complete
953ace6b2b39: Pull complete
b82e7f780841: Pull complete
af07c0feac3a: Pull complete
0c2845dea7a7: Pull complete
dfaca8467d5b: Pull complete
e98b596f06df: Pull complete
Digest: sha256:80c2331afb9573f66a2668806f84c1e70405ba18c903b79cc4ef5a18bc962f73
Status: Downloaded newer image for maryville/skilldirectorycassandra:dev
Creating skilldirectory_container
Creating cassandra_container
Running skilldirectoryschema...
Schema update complete.
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ docker logs skilldirectory
Error: No such container: skilldirectory
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ docker ps
CONTAINER ID        IMAGE                                   COMMAND                  CREATED             STATUS              PORTS                                                       NAMES
500ceb29255a        maryville/skilldirectorycassandra:dev   "/docker-entrypoint.s"   45 seconds ago      Up 44 seconds       7000-7001/tcp, 7199/tcp, 9160/tcp, 0.0.0.0:9042->9042/tcp   cassandra_container
a75bccccea96        maryville/skilldirectory:dev            "/bin/bash -c '/bin/s"   45 seconds ago      Up 17 seconds       0.0.0.0:8080->8080/tcp                                      skilldirectory_container
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ docker logs cassandra_container
INFO  21:44:08 Configuration location: file:/etc/cassandra/cassandra.yaml
INFO  21:44:08 Node configuration:[allocate_tokens_for_keyspace=null; authenticator=PasswordAuthenticator; authorizer=AllowAllAuthorizer; auto_bootstrap=true; auto_snapshot=true; batch_size_fail_threshold_in_kb=50; batch_size_warn_threshold_in_kb=5; batchlog_replay_throttle_in_kb=1024; broadcast_address=172.18.0.3; broadcast_rpc_address=172.18.0.3; buffer_pool_use_heap_if_exhausted=true; cas_contention_timeout_in_ms=1000; client_encryption_options=<REDACTED>; cluster_name=Test Cluster; column_index_size_in_kb=64; commit_failure_policy=stop; commitlog_compression=null; commitlog_directory=/var/lib/cassandra/commitlog; commitlog_max_compression_buffers_in_pool=3; commitlog_periodic_queue_size=-1; commitlog_segment_size_in_mb=32; commitlog_sync=periodic; commitlog_sync_batch_window_in_ms=null; commitlog_sync_period_in_ms=10000; commitlog_total_space_in_mb=null; compaction_large_partition_warning_threshold_mb=100; compaction_throughput_mb_per_sec=16; concurrent_compactors=null; concurrent_counter_writes=32; concurrent_materialized_view_writes=32; concurrent_reads=32; concurrent_replicates=null; concurrent_writes=32; counter_cache_keys_to_save=2147483647; counter_cache_save_period=7200; counter_cache_size_in_mb=null; counter_write_request_timeout_in_ms=5000; cross_node_timeout=false; data_file_directories=[Ljava.lang.String;@29f69090; disk_access_mode=auto; disk_failure_policy=stop; disk_optimization_estimate_percentile=0.95; disk_optimization_page_cross_chance=0.1; disk_optimization_strategy=ssd; dynamic_snitch=true; dynamic_snitch_badness_threshold=0.1; dynamic_snitch_reset_interval_in_ms=600000; dynamic_snitch_update_interval_in_ms=100; enable_scripted_user_defined_functions=false; enable_user_defined_functions=false; enable_user_defined_functions_threads=true; encryption_options=null; endpoint_snitch=SimpleSnitch; file_cache_size_in_mb=512; gc_log_threshold_in_ms=200; gc_warn_threshold_in_ms=1000; hinted_handoff_disabled_datacenters=[]; hinted_handoff_enabled=true; hinted_handoff_throttle_in_kb=1024; hints_compression=null; hints_directory=null; hints_flush_period_in_ms=10000; incremental_backups=false; index_interval=null; index_summary_capacity_in_mb=null; index_summary_resize_interval_in_minutes=60; initial_token=null; inter_dc_stream_throughput_outbound_megabits_per_sec=200; inter_dc_tcp_nodelay=false; internode_authenticator=null; internode_compression=all; internode_recv_buff_size_in_bytes=null; internode_send_buff_size_in_bytes=null; key_cache_keys_to_save=2147483647; key_cache_save_period=14400; key_cache_size_in_mb=null; listen_address=172.18.0.3; listen_interface=null; listen_interface_prefer_ipv6=false; listen_on_broadcast_address=false; max_hint_window_in_ms=10800000; max_hints_delivery_threads=2; max_hints_file_size_in_mb=128; max_mutation_size_in_kb=null; max_streaming_retries=3; max_value_size_in_mb=256; memtable_allocation_type=heap_buffers; memtable_cleanup_threshold=null; memtable_flush_writers=null; memtable_heap_space_in_mb=null; memtable_offheap_space_in_mb=null; min_free_space_per_drive_in_mb=50; native_transport_max_concurrent_connections=-1; native_transport_max_concurrent_connections_per_ip=-1; native_transport_max_frame_size_in_mb=256; native_transport_max_threads=128; native_transport_port=9042; native_transport_port_ssl=null; num_tokens=256; otc_coalescing_strategy=TIMEHORIZON; otc_coalescing_window_us=200; partitioner=org.apache.cassandra.dht.Murmur3Partitioner; permissions_cache_max_entries=1000; permissions_update_interval_in_ms=-1; permissions_validity_in_ms=2000; phi_convict_threshold=8.0; range_request_timeout_in_ms=10000; read_request_timeout_in_ms=5000; request_scheduler=org.apache.cassandra.scheduler.NoScheduler; request_scheduler_id=null; request_scheduler_options=null; request_timeout_in_ms=10000; role_manager=CassandraRoleManager; roles_cache_max_entries=1000; roles_update_interval_in_ms=-1; roles_validity_in_ms=2000; row_cache_class_name=org.apache.cassandra.cache.OHCProvider; row_cache_keys_to_save=2147483647; row_cache_save_period=0; row_cache_size_in_mb=0; rpc_address=0.0.0.0; rpc_interface=null; rpc_interface_prefer_ipv6=false; rpc_keepalive=true; rpc_listen_backlog=50; rpc_max_threads=2147483647; rpc_min_threads=16; rpc_port=9160; rpc_recv_buff_size_in_bytes=null; rpc_send_buff_size_in_bytes=null; rpc_server_type=sync; saved_caches_directory=/var/lib/cassandra/saved_caches; seed_provider=org.apache.cassandra.locator.SimpleSeedProvider{seeds=172.18.0.3}; server_encryption_options=<REDACTED>; snapshot_before_compaction=false; ssl_storage_port=7001; sstable_preemptive_open_interval_in_mb=50; start_native_transport=true; start_rpc=false; storage_port=7000; stream_throughput_outbound_megabits_per_sec=200; streaming_socket_timeout_in_ms=86400000; thrift_framed_transport_size_in_mb=15; thrift_max_message_length_in_mb=16; tombstone_failure_threshold=100000; tombstone_warn_threshold=1000; tracetype_query_ttl=86400; tracetype_repair_ttl=604800; trickle_fsync=false; trickle_fsync_interval_in_kb=10240; truncate_request_timeout_in_ms=60000; unlogged_batch_across_partitions_warn_threshold=10; user_defined_function_fail_timeout=1500; user_defined_function_warn_timeout=500; user_function_timeout_policy=die; windows_timer_interval=1; write_request_timeout_in_ms=2000]
INFO  21:44:08 DiskAccessMode 'auto' determined to be mmap, indexAccessMode is mmap
INFO  21:44:08 Global memtable on-heap threshold is enabled at 122MB
INFO  21:44:08 Global memtable off-heap threshold is enabled at 122MB
WARN  21:44:08 Small commitlog volume detected at /var/lib/cassandra/commitlog; setting commitlog_total_space_in_mb to 1983.  You can override this in cassandra.yaml
WARN  21:44:08 Only 6135 MB free across all data volumes. Consider adding more capacity to your cluster or removing obsolete snapshots
INFO  21:44:09 Hostname: 500ceb29255a
INFO  21:44:09 JVM vendor/version: OpenJDK 64-Bit Server VM/1.8.0_111
INFO  21:44:09 Heap size: 511705088/511705088
INFO  21:44:09 Code Cache Non-heap memory: init = 2555904(2496K) used = 3795200(3706K) committed = 3866624(3776K) max = 251658240(245760K)
INFO  21:44:09 Metaspace Non-heap memory: init = 0(0K) used = 16097792(15720K) committed = 16515072(16128K) max = -1(-1K)
INFO  21:44:09 Compressed Class Space Non-heap memory: init = 0(0K) used = 1955328(1909K) committed = 2097152(2048K) max = 1073741824(1048576K)
INFO  21:44:09 Par Eden Space Heap memory: init = 83886080(81920K) used = 72255032(70561K) committed = 83886080(81920K) max = 83886080(81920K)
INFO  21:44:09 Par Survivor Space Heap memory: init = 10485760(10240K) used = 0(0K) committed = 10485760(10240K) max = 10485760(10240K)
INFO  21:44:09 CMS Old Gen Heap memory: init = 417333248(407552K) used = 0(0K) committed = 417333248(407552K) max = 417333248(407552K)
INFO  21:44:09 Classpath: /etc/cassandra:/usr/share/cassandra/lib/ST4-4.0.8.jar:/usr/share/cassandra/lib/airline-0.6.jar:/usr/share/cassandra/lib/antlr-runtime-3.5.2.jar:/usr/share/cassandra/lib/asm-5.0.4.jar:/usr/share/cassandra/lib/cassandra-driver-core-3.0.1-shaded.jar:/usr/share/cassandra/lib/commons-cli-1.1.jar:/usr/share/cassandra/lib/commons-codec-1.2.jar:/usr/share/cassandra/lib/commons-lang3-3.1.jar:/usr/share/cassandra/lib/commons-math3-3.2.jar:/usr/share/cassandra/lib/compress-lzf-0.8.4.jar:/usr/share/cassandra/lib/concurrentlinkedhashmap-lru-1.4.jar:/usr/share/cassandra/lib/disruptor-3.0.1.jar:/usr/share/cassandra/lib/ecj-4.4.2.jar:/usr/share/cassandra/lib/guava-18.0.jar:/usr/share/cassandra/lib/high-scale-lib-1.0.6.jar:/usr/share/cassandra/lib/jackson-core-asl-1.9.2.jar:/usr/share/cassandra/lib/jackson-mapper-asl-1.9.2.jar:/usr/share/cassandra/lib/jamm-0.3.0.jar:/usr/share/cassandra/lib/javax.inject.jar:/usr/share/cassandra/lib/jbcrypt-0.3m.jar:/usr/share/cassandra/lib/jcl-over-slf4j-1.7.7.jar:/usr/share/cassandra/lib/jna-4.0.0.jar:/usr/share/cassandra/lib/joda-time-2.4.jar:/usr/share/cassandra/lib/json-simple-1.1.jar:/usr/share/cassandra/lib/libthrift-0.9.2.jar:/usr/share/cassandra/lib/log4j-over-slf4j-1.7.7.jar:/usr/share/cassandra/lib/logback-classic-1.1.3.jar:/usr/share/cassandra/lib/logback-core-1.1.3.jar:/usr/share/cassandra/lib/lz4-1.3.0.jar:/usr/share/cassandra/lib/metrics-core-3.1.0.jar:/usr/share/cassandra/lib/metrics-jvm-3.1.0.jar:/usr/share/cassandra/lib/metrics-logback-3.1.0.jar:/usr/share/cassandra/lib/netty-all-4.0.23.Final.jar:/usr/share/cassandra/lib/ohc-core-0.4.3.jar:/usr/share/cassandra/lib/ohc-core-j8-0.4.3.jar:/usr/share/cassandra/lib/reporter-config-base-3.0.0.jar:/usr/share/cassandra/lib/reporter-config3-3.0.0.jar:/usr/share/cassandra/lib/sigar-1.6.4.jar:/usr/share/cassandra/lib/slf4j-api-1.7.7.jar:/usr/share/cassandra/lib/snakeyaml-1.11.jar:/usr/share/cassandra/lib/snappy-java-1.1.1.7.jar:/usr/share/cassandra/lib/stream-2.5.2.jar:/usr/share/cassandra/lib/thrift-server-0.3.7.jar:/usr/share/cassandra/apache-cassandra-3.0.10.jar:/usr/share/cassandra/apache-cassandra-thrift-3.0.10.jar:/usr/share/cassandra/apache-cassandra.jar:/usr/share/cassandra/stress.jar::/usr/share/cassandra/lib/jamm-0.3.0.jar
INFO  21:44:09 JVM Arguments: [-Xloggc:/var/log/cassandra/gc.log, -XX:+UseParNewGC, -XX:+UseConcMarkSweepGC, -XX:+CMSParallelRemarkEnabled, -XX:SurvivorRatio=8, -XX:MaxTenuringThreshold=1, -XX:CMSInitiatingOccupancyFraction=75, -XX:+UseCMSInitiatingOccupancyOnly, -XX:CMSWaitDuration=10000, -XX:+CMSParallelInitialMarkEnabled, -XX:+CMSEdenChunksRecordAlways, -XX:+CMSClassUnloadingEnabled, -XX:+PrintGCDetails, -XX:+PrintGCDateStamps, -XX:+PrintHeapAtGC, -XX:+PrintTenuringDistribution, -XX:+PrintGCApplicationStoppedTime, -XX:+PrintPromotionFailure, -XX:+UseGCLogFileRotation, -XX:NumberOfGCLogFiles=10, -XX:GCLogFileSize=10M, -Xms497M, -Xmx497M, -Xmn100M, -ea, -Xss256k, -XX:+AlwaysPreTouch, -XX:-UseBiasedLocking, -XX:StringTableSize=1000003, -XX:+UseTLAB, -XX:+ResizeTLAB, -XX:+PerfDisableSharedMem, -XX:CompileCommandFile=/etc/cassandra/hotspot_compiler, -javaagent:/usr/share/cassandra/lib/jamm-0.3.0.jar, -XX:+UseThreadPriorities, -XX:ThreadPriorityPolicy=42, -XX:+HeapDumpOnOutOfMemoryError, -Djava.net.preferIPv4Stack=true, -Dcassandra.jmx.local.port=7199, -XX:+DisableExplicitGC, -Djava.library.path=/usr/share/cassandra/lib/sigar-bin, -Dcassandra.libjemalloc=/usr/lib/x86_64-linux-gnu/libjemalloc.so.1, -Dlogback.configurationFile=logback.xml, -Dcassandra.logdir=/var/log/cassandra, -Dcassandra.storagedir=/var/lib/cassandra, -Dcassandra-foreground=yes]
WARN  21:44:09 Unable to lock JVM memory (ENOMEM). This can result in part of the JVM being swapped out, especially with mmapped I/O enabled. Increase RLIMIT_MEMLOCK or run Cassandra as root.
INFO  21:44:09 jemalloc seems to be preloaded from /usr/lib/x86_64-linux-gnu/libjemalloc.so.1
WARN  21:44:09 JMX is not enabled to receive remote connections. Please see cassandra-env.sh for more info.
WARN  21:44:09 OpenJDK is not recommended. Please upgrade to the newest Oracle Java release
INFO  21:44:09 Initializing SIGAR library
WARN  21:44:09 Cassandra server running in degraded mode. Is swap disabled? : true,  Address space adequate? : true,  nofile limit adequate? : false, nproc limit adequate? : false
WARN  21:44:09 Directory /var/lib/cassandra/data doesn't exist
WARN  21:44:09 Directory /var/lib/cassandra/commitlog doesn't exist
WARN  21:44:09 Directory /var/lib/cassandra/saved_caches doesn't exist
WARN  21:44:09 Directory /var/lib/cassandra/hints doesn't exist
INFO  21:44:10 Initializing system.IndexInfo
INFO  21:44:11 Initializing system.batches
INFO  21:44:11 Initializing system.paxos
INFO  21:44:11 Initializing system.local
INFO  21:44:11 Initializing system.peers
INFO  21:44:11 Initializing system.peer_events
INFO  21:44:11 Initializing system.range_xfers
INFO  21:44:11 Initializing system.compaction_history
INFO  21:44:11 Initializing system.sstable_activity
INFO  21:44:11 Initializing system.size_estimates
INFO  21:44:11 Initializing system.available_ranges
INFO  21:44:11 Initializing system.views_builds_in_progress
INFO  21:44:11 Initializing system.built_views
INFO  21:44:11 Initializing system.hints
INFO  21:44:11 Initializing system.batchlog
INFO  21:44:11 Initializing system.schema_keyspaces
INFO  21:44:11 Initializing system.schema_columnfamilies
INFO  21:44:11 Initializing system.schema_columns
INFO  21:44:11 Initializing system.schema_triggers
INFO  21:44:11 Initializing system.schema_usertypes
INFO  21:44:11 Initializing system.schema_functions
INFO  21:44:11 Initializing system.schema_aggregates
INFO  21:44:12 Initializing key cache with capacity of 24 MBs.
INFO  21:44:12 Initializing row cache with capacity of 0 MBs
INFO  21:44:12 Initializing counter cache with capacity of 12 MBs
INFO  21:44:12 Scheduling counter cache save to every 7200 seconds (going to save all keys).
INFO  21:44:12 Global buffer pool is enabled, when pool is exahusted (max is 512 mb) it will allocate on heap
INFO  21:44:12 Populating token metadata from system tables
INFO  21:44:12 Token metadata:
INFO  21:44:12 Initializing system_schema.keyspaces
INFO  21:44:12 Initializing system_schema.tables
INFO  21:44:12 Initializing system_schema.columns
INFO  21:44:12 Initializing system_schema.triggers
INFO  21:44:12 Initializing system_schema.dropped_columns
INFO  21:44:12 Initializing system_schema.views
INFO  21:44:12 Initializing system_schema.types
INFO  21:44:12 Initializing system_schema.functions
INFO  21:44:12 Initializing system_schema.aggregates
INFO  21:44:12 Initializing system_schema.indexes
INFO  21:44:12 Completed loading (3 ms; 5 keys) KeyCache cache
INFO  21:44:12 No commitlog files found; skipping replay
INFO  21:44:12 Populating token metadata from system tables
INFO  21:44:12 Token metadata:
INFO  21:44:13 Cassandra version: 3.0.10
INFO  21:44:13 Thrift API version: 20.1.0
INFO  21:44:13 CQL supported versions: 3.4.0 (default: 3.4.0)
INFO  21:44:13 Initializing index summary manager with a memory pool size of 24 MB and a resize interval of 60 minutes
INFO  21:44:13 Loading persisted ring state
WARN  21:44:13 No host ID found, created 0e766dce-02de-40ea-bb7a-6a002391b606 (Note: This should happen exactly once per node).
INFO  21:44:13 Starting up server gossip
INFO  21:44:13 Starting Messaging Service on /172.18.0.3:7000 (eth0)
INFO  21:44:13 This node will not auto bootstrap because it is configured to be a seed node.
INFO  21:44:13 Generated random tokens. tokens are [8326423056883187983, -3276623050197088240, -1410063418133003827, -4846619958143403034, 8729236961979203864, 3016530975678519407, -850080648072613085, 5008534870302674919, -5317948840609666483, 5893696663117365024, 7791843361411073036, 839603843745665556, 3432160310771559318, -8933038071993600799, -8966466897524311395, -4868934569557781680, -1995865685201510708, 5824389325363085344, -8997995189343801271, 1513294094349646724, -2692693847156560681, -362475665327844671, -397559029399252697, -4036865505167258218, -5737918934938476452, -1739335757449181509, -4608615312712442947, 6915217442234764429, 6862711510337703292, -8203294148560648084, 5423418373468390850, -3216177668659676930, -5494325677360690557, 5956191963645657777, -2798005062566732334, 851827313669256882, -5327958867431492, -1630362675738639065, -3094071220344247757, 1941404224849081850, -1592422895926632851, 5372009012229403480, -4423877115924477257, -7691081915596523835, -596604336602442964, 6222805142737126667, 278887720925605513, -1488122624312331541, 6166209468173707820, -6130798602483659262, -2825445908646205341, -9167322201217260693, 6200706158096743639, -7762626480487337266, -9083050926580749135, 2487345962996329675, -3727744964838832092, 8343636635591712172, -4010786163458382285, -7479582139547187669, 1059281925041439925, -1158364078984033754, 8980213835999319022, 18120575973005647, -3832397180565479539, -8020952559414443713, -5145203769518606267, -7262386296350519509, 1586617221714355030, -310764862512071287, 5640365499355516628, -6553314707070595020, -8427086232191983525, -6970936801261968437, -6720067303651607166, -7803476504805842615, -3669372522223835125, -3678634188808753075, 8708710795523116737, 6834360720425624915, -8487837076791917582, 8765761318522234415, -7200690997122636778, 8363654485979743000, -1574588762444024225, -6455158707360039762, 7745986060285377216, 6659133593290375097, -1345818193073165523, 6226285234031980833, 1135881120228208324, 5465251258144440226, -778522415059606305, -1145380679280142329, 833060264983318546, 4452349866244005060, -1408733079195725481, -4331930227107526049, -3544677045035024812, 1095088844505646173, 3955509606519887638, 43481736791741429, -9148521452632274860, -4448754778010333123, 5011895669890961553, 1177903447644070624, 47731289679962425, 8694532646364154767, 3982172462674084191, 8058260805414575804, 5846968322988904446, 4988029786139648165, -2593389118044185577, -7075585650547079114, 9191413917621756487, 5030491132710402772, -7428035317525262621, 5781408782401497123, 2762621388071611356, -5602619717168806577, 8372906576961653689, 3912860871924109325, -4595747918895514706, -5639088200141691113, 8282625333415931450, 3582360167277630671, -4110086087996938536, 4596305640384092510, -7222330512690614030, 9060890685879258325, -2609179422100489316, 1182917008973305139, 5662123224501757027, -5252817468768067495, -1097325129953494697, 2699410102975714723, -6952286804750639804, -2009893333375429605, -4016684225032711251, -435491501199598496, -9014178972970833332, 7361902147940196075, 168731533953218704, -2450869010500728468, -4932864883198275360, 7871225818871028415, 7054400715163601986, -550638069123057423, -7544029273929123462, 7174970215169934563, -1836897182125747099, -1519655811107492148, 5567929721432902304, 2059344066332225846, 784763001160711950, 8797262803456342795, -1397641166214239937, -6052493483262275392, -9078824847556780878, -5601130453965210573, 7865886125196049956, -651541996983853495, -4499431514362788512, 4784242609614522700, 834762507744141661, 2510854278181064332, 2191657187858787954, -6827144180289168398, 6405560494403343579, 9105959695284998515, -4497826784431071705, -8728404300724644781, 8924287087679984025, 5735458651917103867, -5520211297996397827, 7786331970111787837, 5112920307501786053, 8201813780544919019, -1959630463979424624, -4169020307081655707, -7602576518445393510, -4422507772390631652, 176557489736500518, -1957359425095040193, -630743702303240115, 5203291240108069128, 5720086934735144953, 7355338038292006611, -6582244460156894252, 3544869649376606801, 5371580184939902348, -2539643523845148398, -7369177831103529095, 3192633027351775379, 5520362623672063541, -6261029826850882432, -1022546577958694521, -694995895947831652, -3488291234804514864, 4653958670946890481, -6790970222501876387, -3638770359412194388, -2897008786590389371, 4203025691454502079, -1290352883857390147, -1565446137577480081, 8948284554559149913, 4163981836097392880, -1546743009501331539, 5983241415060747995, -6251628557803384282, -3900347554054428973, 2023539486057101462, 5068620125989371923, 3615283259296362380, -1516821162127534603, -5864467318305850801, -5470128962169511091, -5058611960151948854, -6268156806723777292, 8049052607682577394, -8739391289352571891, 6740409600051444036, -8453711353306201810, -7247406735105817062, 1630206959205341814, 6976224800635591985, -1804607473386229871, 4753943069173060151, -8564756906486151882, 4105964448142855774, 9202663338401049441, -1440415997962540500, 32503524172179009, -2683459781159638938, 4458698524604011807, 1805177073863313529, -1332600850480006882, -4783367774739147118, 4712165524493870967, -8366391396880864134, -6960792411026201334, -6902710784813816045, -7398303182319713856, -7250198865267942659, -7941990254614143491, 7010351573418869554, -8300529883100078236, -4788958648837243108, 4173236796495687798, -341340024173042638, -3469970187148049526, 3341259813854864036, -2626715210961869158, 1919066844673228418, -8404509636634567511]
INFO  21:44:13 Create new Keyspace: KeyspaceMetadata{name=system_traces, params=KeyspaceParams{durable_writes=true, replication=ReplicationParams{class=org.apache.cassandra.locator.SimpleStrategy, replication_factor=2}}, tables=[org.apache.cassandra.config.CFMetaData@2791a91c[cfId=c5e99f16-8677-3914-b17e-960613512345,ksName=system_traces,cfName=sessions,flags=[COMPOUND],params=TableParams{comment=tracing sessions, read_repair_chance=0.0, dclocal_read_repair_chance=0.0, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=0, default_time_to_live=0, memtable_flush_period_in_ms=3600000, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(),partitionColumns=[[] | [client command coordinator duration request started_at parameters]],partitionKeyColumns=[ColumnDefinition{name=session_id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}],clusteringColumns=[],keyValidator=org.apache.cassandra.db.marshal.UUIDType,columnMetadata=[ColumnDefinition{name=client, type=org.apache.cassandra.db.marshal.InetAddressType, kind=REGULAR, position=-1}, ColumnDefinition{name=command, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=session_id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=coordinator, type=org.apache.cassandra.db.marshal.InetAddressType, kind=REGULAR, position=-1}, ColumnDefinition{name=request, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=started_at, type=org.apache.cassandra.db.marshal.TimestampType, kind=REGULAR, position=-1}, ColumnDefinition{name=duration, type=org.apache.cassandra.db.marshal.Int32Type, kind=REGULAR, position=-1}, ColumnDefinition{name=parameters, type=org.apache.cassandra.db.marshal.MapType(org.apache.cassandra.db.marshal.UTF8Type,org.apache.cassandra.db.marshal.UTF8Type), kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]], org.apache.cassandra.config.CFMetaData@5fb8f594[cfId=8826e8e9-e16a-3728-8753-3bc1fc713c25,ksName=system_traces,cfName=events,flags=[COMPOUND],params=TableParams{comment=tracing events, read_repair_chance=0.0, dclocal_read_repair_chance=0.0, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=0, default_time_to_live=0, memtable_flush_period_in_ms=3600000, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.TimeUUIDType),partitionColumns=[[] | [activity source source_elapsed thread]],partitionKeyColumns=[ColumnDefinition{name=session_id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=event_id, type=org.apache.cassandra.db.marshal.TimeUUIDType, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UUIDType,columnMetadata=[ColumnDefinition{name=activity, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=session_id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=thread, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=event_id, type=org.apache.cassandra.db.marshal.TimeUUIDType, kind=CLUSTERING, position=0}, ColumnDefinition{name=source, type=org.apache.cassandra.db.marshal.InetAddressType, kind=REGULAR, position=-1}, ColumnDefinition{name=source_elapsed, type=org.apache.cassandra.db.marshal.Int32Type, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]]], views=[], functions=[], types=[]}
INFO  21:44:14 Initializing system_traces.events
INFO  21:44:14 Initializing system_traces.sessions
INFO  21:44:14 Create new Keyspace: KeyspaceMetadata{name=system_distributed, params=KeyspaceParams{durable_writes=true, replication=ReplicationParams{class=org.apache.cassandra.locator.SimpleStrategy, replication_factor=3}}, tables=[org.apache.cassandra.config.CFMetaData@41adeb6d[cfId=759fffad-624b-3181-80ee-fa9a52d1f627,ksName=system_distributed,cfName=repair_history,flags=[COMPOUND],params=TableParams{comment=Repair history, read_repair_chance=0.0, dclocal_read_repair_chance=0.0, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=0, default_time_to_live=0, memtable_flush_period_in_ms=3600000, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.TimeUUIDType),partitionColumns=[[] | [coordinator exception_message exception_stacktrace finished_at parent_id range_begin range_end started_at status participants]],partitionKeyColumns=[ColumnDefinition{name=keyspace_name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=columnfamily_name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=1}],clusteringColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.TimeUUIDType, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.CompositeType(org.apache.cassandra.db.marshal.UTF8Type,org.apache.cassandra.db.marshal.UTF8Type),columnMetadata=[ColumnDefinition{name=status, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.TimeUUIDType, kind=CLUSTERING, position=0}, ColumnDefinition{name=coordinator, type=org.apache.cassandra.db.marshal.InetAddressType, kind=REGULAR, position=-1}, ColumnDefinition{name=finished_at, type=org.apache.cassandra.db.marshal.TimestampType, kind=REGULAR, position=-1}, ColumnDefinition{name=participants, type=org.apache.cassandra.db.marshal.SetType(org.apache.cassandra.db.marshal.InetAddressType), kind=REGULAR, position=-1}, ColumnDefinition{name=exception_stacktrace, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=parent_id, type=org.apache.cassandra.db.marshal.TimeUUIDType, kind=REGULAR, position=-1}, ColumnDefinition{name=range_end, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=range_begin, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=exception_message, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=keyspace_name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=started_at, type=org.apache.cassandra.db.marshal.TimestampType, kind=REGULAR, position=-1}, ColumnDefinition{name=columnfamily_name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=1}],droppedColumns={},triggers=[],indexes=[]], org.apache.cassandra.config.CFMetaData@4393c4b[cfId=deabd734-b99d-3b9c-92e5-fd92eb5abf14,ksName=system_distributed,cfName=parent_repair_history,flags=[COMPOUND],params=TableParams{comment=Repair history, read_repair_chance=0.0, dclocal_read_repair_chance=0.0, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=0, default_time_to_live=0, memtable_flush_period_in_ms=3600000, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(),partitionColumns=[[] | [exception_message exception_stacktrace finished_at keyspace_name started_at columnfamily_names requested_ranges successful_ranges]],partitionKeyColumns=[ColumnDefinition{name=parent_id, type=org.apache.cassandra.db.marshal.TimeUUIDType, kind=PARTITION_KEY, position=0}],clusteringColumns=[],keyValidator=org.apache.cassandra.db.marshal.TimeUUIDType,columnMetadata=[ColumnDefinition{name=requested_ranges, type=org.apache.cassandra.db.marshal.SetType(org.apache.cassandra.db.marshal.UTF8Type), kind=REGULAR, position=-1}, ColumnDefinition{name=exception_message, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=keyspace_name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=successful_ranges, type=org.apache.cassandra.db.marshal.SetType(org.apache.cassandra.db.marshal.UTF8Type), kind=REGULAR, position=-1}, ColumnDefinition{name=started_at, type=org.apache.cassandra.db.marshal.TimestampType, kind=REGULAR, position=-1}, ColumnDefinition{name=finished_at, type=org.apache.cassandra.db.marshal.TimestampType, kind=REGULAR, position=-1}, ColumnDefinition{name=exception_stacktrace, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=parent_id, type=org.apache.cassandra.db.marshal.TimeUUIDType, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=columnfamily_names, type=org.apache.cassandra.db.marshal.SetType(org.apache.cassandra.db.marshal.UTF8Type), kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]]], views=[], functions=[], types=[]}
INFO  21:44:14 Initializing system_distributed.parent_repair_history
INFO  21:44:14 Initializing system_distributed.repair_history
INFO  21:44:14 Create new Keyspace: KeyspaceMetadata{name=system_auth, params=KeyspaceParams{durable_writes=true, replication=ReplicationParams{class=org.apache.cassandra.locator.SimpleStrategy, replication_factor=1}}, tables=[org.apache.cassandra.config.CFMetaData@37cbc663[cfId=5bc52802-de25-35ed-aeab-188eecebb090,ksName=system_auth,cfName=roles,flags=[COMPOUND],params=TableParams{comment=role definitions, read_repair_chance=0.0, dclocal_read_repair_chance=0.0, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=7776000, default_time_to_live=0, memtable_flush_period_in_ms=3600000, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(),partitionColumns=[[] | [can_login is_superuser salted_hash member_of]],partitionKeyColumns=[ColumnDefinition{name=role, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}],clusteringColumns=[],keyValidator=org.apache.cassandra.db.marshal.UTF8Type,columnMetadata=[ColumnDefinition{name=role, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=salted_hash, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=member_of, type=org.apache.cassandra.db.marshal.SetType(org.apache.cassandra.db.marshal.UTF8Type), kind=REGULAR, position=-1}, ColumnDefinition{name=can_login, type=org.apache.cassandra.db.marshal.BooleanType, kind=REGULAR, position=-1}, ColumnDefinition{name=is_superuser, type=org.apache.cassandra.db.marshal.BooleanType, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]], org.apache.cassandra.config.CFMetaData@43b187f1[cfId=0ecdaa87-f8fb-3e60-88d1-74fb36fe5c0d,ksName=system_auth,cfName=role_members,flags=[COMPOUND],params=TableParams{comment=role memberships lookup table, read_repair_chance=0.0, dclocal_read_repair_chance=0.0, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=7776000, default_time_to_live=0, memtable_flush_period_in_ms=3600000, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UTF8Type),partitionColumns=[[] | []],partitionKeyColumns=[ColumnDefinition{name=role, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=member, type=org.apache.cassandra.db.marshal.UTF8Type, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UTF8Type,columnMetadata=[ColumnDefinition{name=role, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=member, type=org.apache.cassandra.db.marshal.UTF8Type, kind=CLUSTERING, position=0}],droppedColumns={},triggers=[],indexes=[]], org.apache.cassandra.config.CFMetaData@37ee43e5[cfId=3afbe79f-2194-31a7-add7-f5ab90d8ec9c,ksName=system_auth,cfName=role_permissions,flags=[COMPOUND],params=TableParams{comment=permissions granted to db roles, read_repair_chance=0.0, dclocal_read_repair_chance=0.0, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=7776000, default_time_to_live=0, memtable_flush_period_in_ms=3600000, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UTF8Type),partitionColumns=[[] | [permissions]],partitionKeyColumns=[ColumnDefinition{name=role, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=resource, type=org.apache.cassandra.db.marshal.UTF8Type, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UTF8Type,columnMetadata=[ColumnDefinition{name=resource, type=org.apache.cassandra.db.marshal.UTF8Type, kind=CLUSTERING, position=0}, ColumnDefinition{name=role, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=permissions, type=org.apache.cassandra.db.marshal.SetType(org.apache.cassandra.db.marshal.UTF8Type), kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]], org.apache.cassandra.config.CFMetaData@c2d5e98[cfId=5f2fbdad-91f1-3946-bd25-d5da3a5c35ec,ksName=system_auth,cfName=resource_role_permissons_index,flags=[COMPOUND],params=TableParams{comment=index of db roles with permissions granted on a resource, read_repair_chance=0.0, dclocal_read_repair_chance=0.0, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=7776000, default_time_to_live=0, memtable_flush_period_in_ms=3600000, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UTF8Type),partitionColumns=[[] | []],partitionKeyColumns=[ColumnDefinition{name=resource, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=role, type=org.apache.cassandra.db.marshal.UTF8Type, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UTF8Type,columnMetadata=[ColumnDefinition{name=resource, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=role, type=org.apache.cassandra.db.marshal.UTF8Type, kind=CLUSTERING, position=0}],droppedColumns={},triggers=[],indexes=[]]], views=[], functions=[], types=[]}
INFO  21:44:14 Initializing system_auth.resource_role_permissons_index
INFO  21:44:14 Initializing system_auth.role_members
INFO  21:44:14 Initializing system_auth.role_permissions
INFO  21:44:14 Initializing system_auth.roles
INFO  21:44:14 Waiting for gossip to settle before accepting client requests...
INFO  21:44:22 No gossip backlog; proceeding
INFO  21:44:22 Netty using native Epoll event loop
INFO  21:44:22 Using Netty Version: [netty-buffer=netty-buffer-4.0.23.Final.208198c, netty-codec=netty-codec-4.0.23.Final.208198c, netty-codec-http=netty-codec-http-4.0.23.Final.208198c, netty-codec-socks=netty-codec-socks-4.0.23.Final.208198c, netty-common=netty-common-4.0.23.Final.208198c, netty-handler=netty-handler-4.0.23.Final.208198c, netty-transport=netty-transport-4.0.23.Final.208198c, netty-transport-rxtx=netty-transport-rxtx-4.0.23.Final.208198c, netty-transport-sctp=netty-transport-sctp-4.0.23.Final.208198c, netty-transport-udt=netty-transport-udt-4.0.23.Final.208198c]
INFO  21:44:22 Starting listening for CQL clients on /0.0.0.0:9042 (unencrypted)...
INFO  21:44:22 Not starting RPC server as requested. Use JMX (StorageService->startRPCServer()) or nodetool (enablethrift) to start it
INFO  21:44:24 Created default superuser role 'cassandra'
INFO  21:44:32 Create new Keyspace: KeyspaceMetadata{name=skill_directory_keyspace, params=KeyspaceParams{durable_writes=true, replication=ReplicationParams{class=org.apache.cassandra.locator.SimpleStrategy, replication_factor=1}}, tables=[], views=[], functions=[], types=[]}
INFO  21:44:32 Create new table: org.apache.cassandra.config.CFMetaData@40806b22[cfId=ce2e58a0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=skills,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(),partitionColumns=[[] | [name skill_type]],partitionKeyColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}],clusteringColumns=[],keyValidator=org.apache.cassandra.db.marshal.UUIDType,columnMetadata=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=skill_type, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]]
INFO  21:44:32 Initializing skill_directory_keyspace.skills
INFO  21:44:32 Create new table: org.apache.cassandra.config.CFMetaData@7aa7ed86[cfId=ce4981c0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=links,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UUIDType),partitionColumns=[[] | [link_type name url]],partitionKeyColumns=[ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UUIDType,columnMetadata=[ColumnDefinition{name=link_type, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}, ColumnDefinition{name=name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=url, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]]
INFO  21:44:32 Initializing skill_directory_keyspace.links
INFO  21:44:32 Create new table: org.apache.cassandra.config.CFMetaData@4cf97507[cfId=ce62fd30-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=teammembers,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(),partitionColumns=[[] | [name title]],partitionKeyColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}],clusteringColumns=[],keyValidator=org.apache.cassandra.db.marshal.UUIDType,columnMetadata=[ColumnDefinition{name=title, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]]
INFO  21:44:32 Initializing skill_directory_keyspace.teammembers
INFO  21:44:32 Create new table: org.apache.cassandra.config.CFMetaData@484bfe3[cfId=ce7acaf0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=tmskills,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UUIDType),partitionColumns=[[] | [proficiency skill_id wish_list]],partitionKeyColumns=[ColumnDefinition{name=team_member_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UTF8Type,columnMetadata=[ColumnDefinition{name=proficiency, type=org.apache.cassandra.db.marshal.Int32Type, kind=REGULAR, position=-1}, ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}, ColumnDefinition{name=team_member_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=wish_list, type=org.apache.cassandra.db.marshal.BooleanType, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]]
INFO  21:44:32 Initializing skill_directory_keyspace.tmskills
INFO  21:44:32 Create new table: org.apache.cassandra.config.CFMetaData@65dc0375[cfId=ce9816f0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=skillreviews,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UUIDType),partitionColumns=[[] | [body positive team_member_id timestamp]],partitionKeyColumns=[ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UTF8Type,columnMetadata=[ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=positive, type=org.apache.cassandra.db.marshal.BooleanType, kind=REGULAR, position=-1}, ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}, ColumnDefinition{name=body, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=timestamp, type=org.apache.cassandra.db.marshal.TimestampType, kind=REGULAR, position=-1}, ColumnDefinition{name=team_member_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]]
INFO  21:44:33 Initializing skill_directory_keyspace.skillreviews
INFO  21:44:33 Update table 'skill_directory_keyspace/skills' From org.apache.cassandra.config.CFMetaData@1bb87f5d[cfId=ce2e58a0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=skills,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={max_threshold=32, min_threshold=4}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(),partitionColumns=[[] | [name skill_type]],partitionKeyColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}],clusteringColumns=[],keyValidator=org.apache.cassandra.db.marshal.UUIDType,columnMetadata=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=skill_type, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]] To org.apache.cassandra.config.CFMetaData@2f900ab2[cfId=ce2e58a0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=skills,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={max_threshold=32, min_threshold=4}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(),partitionColumns=[[] | [name skill_type]],partitionKeyColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}],clusteringColumns=[],keyValidator=org.apache.cassandra.db.marshal.UUIDType,columnMetadata=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=skill_type, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[org.apache.cassandra.schema.IndexMetadata@18e041d[id=c7881146-dc27-3a08-a665-4ee42902b25d,name=skills_skill_type_idx,kind=COMPOSITES,options={target=skill_type}]]]
INFO  21:44:33 Initializing skill_directory_keyspace.skills.skills_skill_type_idx
INFO  21:44:33 Update table 'skill_directory_keyspace/tmskills' From org.apache.cassandra.config.CFMetaData@3a76977c[cfId=ce7acaf0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=tmskills,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={max_threshold=32, min_threshold=4}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UUIDType),partitionColumns=[[] | [proficiency skill_id wish_list]],partitionKeyColumns=[ColumnDefinition{name=team_member_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UTF8Type,columnMetadata=[ColumnDefinition{name=proficiency, type=org.apache.cassandra.db.marshal.Int32Type, kind=REGULAR, position=-1}, ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}, ColumnDefinition{name=team_member_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=wish_list, type=org.apache.cassandra.db.marshal.BooleanType, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]] To org.apache.cassandra.config.CFMetaData@33a3c6c9[cfId=ce7acaf0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=tmskills,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={max_threshold=32, min_threshold=4}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UUIDType),partitionColumns=[[] | [proficiency skill_id wish_list]],partitionKeyColumns=[ColumnDefinition{name=team_member_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UTF8Type,columnMetadata=[ColumnDefinition{name=proficiency, type=org.apache.cassandra.db.marshal.Int32Type, kind=REGULAR, position=-1}, ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}, ColumnDefinition{name=team_member_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=wish_list, type=org.apache.cassandra.db.marshal.BooleanType, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[org.apache.cassandra.schema.IndexMetadata@1be39676[id=bf647b96-1ed2-3bf2-b52f-6c1b9c71fd36,name=tmskills_id_idx,kind=COMPOSITES,options={target=id}]]]
INFO  21:44:33 Initializing skill_directory_keyspace.tmskills.tmskills_id_idx
INFO  21:44:33 Update table 'skill_directory_keyspace/links' From org.apache.cassandra.config.CFMetaData@3e8836fa[cfId=ce4981c0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=links,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={max_threshold=32, min_threshold=4}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UUIDType),partitionColumns=[[] | [link_type name url]],partitionKeyColumns=[ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UUIDType,columnMetadata=[ColumnDefinition{name=link_type, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}, ColumnDefinition{name=name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=url, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]] To org.apache.cassandra.config.CFMetaData@778e6011[cfId=ce4981c0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=links,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={max_threshold=32, min_threshold=4}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UUIDType),partitionColumns=[[] | [link_type name url]],partitionKeyColumns=[ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UUIDType,columnMetadata=[ColumnDefinition{name=link_type, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}, ColumnDefinition{name=name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=url, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[org.apache.cassandra.schema.IndexMetadata@16101a33[id=de71a04c-aeae-3a42-a065-65c6091aa10a,name=links_id_idx,kind=COMPOSITES,options={target=id}]]]
INFO  21:44:34 Initializing skill_directory_keyspace.links.links_id_idx
INFO  21:44:34 Update table 'skill_directory_keyspace/skillreviews' From org.apache.cassandra.config.CFMetaData@67c6b259[cfId=ce9816f0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=skillreviews,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={max_threshold=32, min_threshold=4}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UUIDType),partitionColumns=[[] | [body positive team_member_id timestamp]],partitionKeyColumns=[ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UTF8Type,columnMetadata=[ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=positive, type=org.apache.cassandra.db.marshal.BooleanType, kind=REGULAR, position=-1}, ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}, ColumnDefinition{name=body, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=timestamp, type=org.apache.cassandra.db.marshal.TimestampType, kind=REGULAR, position=-1}, ColumnDefinition{name=team_member_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]] To org.apache.cassandra.config.CFMetaData@3c435610[cfId=ce9816f0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=skillreviews,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={max_threshold=32, min_threshold=4}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UUIDType),partitionColumns=[[] | [body positive team_member_id timestamp]],partitionKeyColumns=[ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UTF8Type,columnMetadata=[ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=positive, type=org.apache.cassandra.db.marshal.BooleanType, kind=REGULAR, position=-1}, ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}, ColumnDefinition{name=body, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=timestamp, type=org.apache.cassandra.db.marshal.TimestampType, kind=REGULAR, position=-1}, ColumnDefinition{name=team_member_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[org.apache.cassandra.schema.IndexMetadata@4da34907[id=1dc25e0a-24ea-301f-9e85-702240b5fad1,name=skillreviews_id_idx,kind=COMPOSITES,options={target=id}]]]
INFO  21:44:34 Initializing skill_directory_keyspace.skillreviews.skillreviews_id_idx
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ docker logs cassandra_container
INFO  21:44:08 Configuration location: file:/etc/cassandra/cassandra.yaml
INFO  21:44:08 Node configuration:[allocate_tokens_for_keyspace=null; authenticator=PasswordAuthenticator; authorizer=AllowAllAuthorizer; auto_bootstrap=true; auto_snapshot=true; batch_size_fail_threshold_in_kb=50; batch_size_warn_threshold_in_kb=5; batchlog_replay_throttle_in_kb=1024; broadcast_address=172.18.0.3; broadcast_rpc_address=172.18.0.3; buffer_pool_use_heap_if_exhausted=true; cas_contention_timeout_in_ms=1000; client_encryption_options=<REDACTED>; cluster_name=Test Cluster; column_index_size_in_kb=64; commit_failure_policy=stop; commitlog_compression=null; commitlog_directory=/var/lib/cassandra/commitlog; commitlog_max_compression_buffers_in_pool=3; commitlog_periodic_queue_size=-1; commitlog_segment_size_in_mb=32; commitlog_sync=periodic; commitlog_sync_batch_window_in_ms=null; commitlog_sync_period_in_ms=10000; commitlog_total_space_in_mb=null; compaction_large_partition_warning_threshold_mb=100; compaction_throughput_mb_per_sec=16; concurrent_compactors=null; concurrent_counter_writes=32; concurrent_materialized_view_writes=32; concurrent_reads=32; concurrent_replicates=null; concurrent_writes=32; counter_cache_keys_to_save=2147483647; counter_cache_save_period=7200; counter_cache_size_in_mb=null; counter_write_request_timeout_in_ms=5000; cross_node_timeout=false; data_file_directories=[Ljava.lang.String;@29f69090; disk_access_mode=auto; disk_failure_policy=stop; disk_optimization_estimate_percentile=0.95; disk_optimization_page_cross_chance=0.1; disk_optimization_strategy=ssd; dynamic_snitch=true; dynamic_snitch_badness_threshold=0.1; dynamic_snitch_reset_interval_in_ms=600000; dynamic_snitch_update_interval_in_ms=100; enable_scripted_user_defined_functions=false; enable_user_defined_functions=false; enable_user_defined_functions_threads=true; encryption_options=null; endpoint_snitch=SimpleSnitch; file_cache_size_in_mb=512; gc_log_threshold_in_ms=200; gc_warn_threshold_in_ms=1000; hinted_handoff_disabled_datacenters=[]; hinted_handoff_enabled=true; hinted_handoff_throttle_in_kb=1024; hints_compression=null; hints_directory=null; hints_flush_period_in_ms=10000; incremental_backups=false; index_interval=null; index_summary_capacity_in_mb=null; index_summary_resize_interval_in_minutes=60; initial_token=null; inter_dc_stream_throughput_outbound_megabits_per_sec=200; inter_dc_tcp_nodelay=false; internode_authenticator=null; internode_compression=all; internode_recv_buff_size_in_bytes=null; internode_send_buff_size_in_bytes=null; key_cache_keys_to_save=2147483647; key_cache_save_period=14400; key_cache_size_in_mb=null; listen_address=172.18.0.3; listen_interface=null; listen_interface_prefer_ipv6=false; listen_on_broadcast_address=false; max_hint_window_in_ms=10800000; max_hints_delivery_threads=2; max_hints_file_size_in_mb=128; max_mutation_size_in_kb=null; max_streaming_retries=3; max_value_size_in_mb=256; memtable_allocation_type=heap_buffers; memtable_cleanup_threshold=null; memtable_flush_writers=null; memtable_heap_space_in_mb=null; memtable_offheap_space_in_mb=null; min_free_space_per_drive_in_mb=50; native_transport_max_concurrent_connections=-1; native_transport_max_concurrent_connections_per_ip=-1; native_transport_max_frame_size_in_mb=256; native_transport_max_threads=128; native_transport_port=9042; native_transport_port_ssl=null; num_tokens=256; otc_coalescing_strategy=TIMEHORIZON; otc_coalescing_window_us=200; partitioner=org.apache.cassandra.dht.Murmur3Partitioner; permissions_cache_max_entries=1000; permissions_update_interval_in_ms=-1; permissions_validity_in_ms=2000; phi_convict_threshold=8.0; range_request_timeout_in_ms=10000; read_request_timeout_in_ms=5000; request_scheduler=org.apache.cassandra.scheduler.NoScheduler; request_scheduler_id=null; request_scheduler_options=null; request_timeout_in_ms=10000; role_manager=CassandraRoleManager; roles_cache_max_entries=1000; roles_update_interval_in_ms=-1; roles_validity_in_ms=2000; row_cache_class_name=org.apache.cassandra.cache.OHCProvider; row_cache_keys_to_save=2147483647; row_cache_save_period=0; row_cache_size_in_mb=0; rpc_address=0.0.0.0; rpc_interface=null; rpc_interface_prefer_ipv6=false; rpc_keepalive=true; rpc_listen_backlog=50; rpc_max_threads=2147483647; rpc_min_threads=16; rpc_port=9160; rpc_recv_buff_size_in_bytes=null; rpc_send_buff_size_in_bytes=null; rpc_server_type=sync; saved_caches_directory=/var/lib/cassandra/saved_caches; seed_provider=org.apache.cassandra.locator.SimpleSeedProvider{seeds=172.18.0.3}; server_encryption_options=<REDACTED>; snapshot_before_compaction=false; ssl_storage_port=7001; sstable_preemptive_open_interval_in_mb=50; start_native_transport=true; start_rpc=false; storage_port=7000; stream_throughput_outbound_megabits_per_sec=200; streaming_socket_timeout_in_ms=86400000; thrift_framed_transport_size_in_mb=15; thrift_max_message_length_in_mb=16; tombstone_failure_threshold=100000; tombstone_warn_threshold=1000; tracetype_query_ttl=86400; tracetype_repair_ttl=604800; trickle_fsync=false; trickle_fsync_interval_in_kb=10240; truncate_request_timeout_in_ms=60000; unlogged_batch_across_partitions_warn_threshold=10; user_defined_function_fail_timeout=1500; user_defined_function_warn_timeout=500; user_function_timeout_policy=die; windows_timer_interval=1; write_request_timeout_in_ms=2000]
INFO  21:44:08 DiskAccessMode 'auto' determined to be mmap, indexAccessMode is mmap
INFO  21:44:08 Global memtable on-heap threshold is enabled at 122MB
INFO  21:44:08 Global memtable off-heap threshold is enabled at 122MB
WARN  21:44:08 Small commitlog volume detected at /var/lib/cassandra/commitlog; setting commitlog_total_space_in_mb to 1983.  You can override this in cassandra.yaml
WARN  21:44:08 Only 6135 MB free across all data volumes. Consider adding more capacity to your cluster or removing obsolete snapshots
INFO  21:44:09 Hostname: 500ceb29255a
INFO  21:44:09 JVM vendor/version: OpenJDK 64-Bit Server VM/1.8.0_111
INFO  21:44:09 Heap size: 511705088/511705088
INFO  21:44:09 Code Cache Non-heap memory: init = 2555904(2496K) used = 3795200(3706K) committed = 3866624(3776K) max = 251658240(245760K)
INFO  21:44:09 Metaspace Non-heap memory: init = 0(0K) used = 16097792(15720K) committed = 16515072(16128K) max = -1(-1K)
INFO  21:44:09 Compressed Class Space Non-heap memory: init = 0(0K) used = 1955328(1909K) committed = 2097152(2048K) max = 1073741824(1048576K)
INFO  21:44:09 Par Eden Space Heap memory: init = 83886080(81920K) used = 72255032(70561K) committed = 83886080(81920K) max = 83886080(81920K)
INFO  21:44:09 Par Survivor Space Heap memory: init = 10485760(10240K) used = 0(0K) committed = 10485760(10240K) max = 10485760(10240K)
INFO  21:44:09 CMS Old Gen Heap memory: init = 417333248(407552K) used = 0(0K) committed = 417333248(407552K) max = 417333248(407552K)
INFO  21:44:09 Classpath: /etc/cassandra:/usr/share/cassandra/lib/ST4-4.0.8.jar:/usr/share/cassandra/lib/airline-0.6.jar:/usr/share/cassandra/lib/antlr-runtime-3.5.2.jar:/usr/share/cassandra/lib/asm-5.0.4.jar:/usr/share/cassandra/lib/cassandra-driver-core-3.0.1-shaded.jar:/usr/share/cassandra/lib/commons-cli-1.1.jar:/usr/share/cassandra/lib/commons-codec-1.2.jar:/usr/share/cassandra/lib/commons-lang3-3.1.jar:/usr/share/cassandra/lib/commons-math3-3.2.jar:/usr/share/cassandra/lib/compress-lzf-0.8.4.jar:/usr/share/cassandra/lib/concurrentlinkedhashmap-lru-1.4.jar:/usr/share/cassandra/lib/disruptor-3.0.1.jar:/usr/share/cassandra/lib/ecj-4.4.2.jar:/usr/share/cassandra/lib/guava-18.0.jar:/usr/share/cassandra/lib/high-scale-lib-1.0.6.jar:/usr/share/cassandra/lib/jackson-core-asl-1.9.2.jar:/usr/share/cassandra/lib/jackson-mapper-asl-1.9.2.jar:/usr/share/cassandra/lib/jamm-0.3.0.jar:/usr/share/cassandra/lib/javax.inject.jar:/usr/share/cassandra/lib/jbcrypt-0.3m.jar:/usr/share/cassandra/lib/jcl-over-slf4j-1.7.7.jar:/usr/share/cassandra/lib/jna-4.0.0.jar:/usr/share/cassandra/lib/joda-time-2.4.jar:/usr/share/cassandra/lib/json-simple-1.1.jar:/usr/share/cassandra/lib/libthrift-0.9.2.jar:/usr/share/cassandra/lib/log4j-over-slf4j-1.7.7.jar:/usr/share/cassandra/lib/logback-classic-1.1.3.jar:/usr/share/cassandra/lib/logback-core-1.1.3.jar:/usr/share/cassandra/lib/lz4-1.3.0.jar:/usr/share/cassandra/lib/metrics-core-3.1.0.jar:/usr/share/cassandra/lib/metrics-jvm-3.1.0.jar:/usr/share/cassandra/lib/metrics-logback-3.1.0.jar:/usr/share/cassandra/lib/netty-all-4.0.23.Final.jar:/usr/share/cassandra/lib/ohc-core-0.4.3.jar:/usr/share/cassandra/lib/ohc-core-j8-0.4.3.jar:/usr/share/cassandra/lib/reporter-config-base-3.0.0.jar:/usr/share/cassandra/lib/reporter-config3-3.0.0.jar:/usr/share/cassandra/lib/sigar-1.6.4.jar:/usr/share/cassandra/lib/slf4j-api-1.7.7.jar:/usr/share/cassandra/lib/snakeyaml-1.11.jar:/usr/share/cassandra/lib/snappy-java-1.1.1.7.jar:/usr/share/cassandra/lib/stream-2.5.2.jar:/usr/share/cassandra/lib/thrift-server-0.3.7.jar:/usr/share/cassandra/apache-cassandra-3.0.10.jar:/usr/share/cassandra/apache-cassandra-thrift-3.0.10.jar:/usr/share/cassandra/apache-cassandra.jar:/usr/share/cassandra/stress.jar::/usr/share/cassandra/lib/jamm-0.3.0.jar
INFO  21:44:09 JVM Arguments: [-Xloggc:/var/log/cassandra/gc.log, -XX:+UseParNewGC, -XX:+UseConcMarkSweepGC, -XX:+CMSParallelRemarkEnabled, -XX:SurvivorRatio=8, -XX:MaxTenuringThreshold=1, -XX:CMSInitiatingOccupancyFraction=75, -XX:+UseCMSInitiatingOccupancyOnly, -XX:CMSWaitDuration=10000, -XX:+CMSParallelInitialMarkEnabled, -XX:+CMSEdenChunksRecordAlways, -XX:+CMSClassUnloadingEnabled, -XX:+PrintGCDetails, -XX:+PrintGCDateStamps, -XX:+PrintHeapAtGC, -XX:+PrintTenuringDistribution, -XX:+PrintGCApplicationStoppedTime, -XX:+PrintPromotionFailure, -XX:+UseGCLogFileRotation, -XX:NumberOfGCLogFiles=10, -XX:GCLogFileSize=10M, -Xms497M, -Xmx497M, -Xmn100M, -ea, -Xss256k, -XX:+AlwaysPreTouch, -XX:-UseBiasedLocking, -XX:StringTableSize=1000003, -XX:+UseTLAB, -XX:+ResizeTLAB, -XX:+PerfDisableSharedMem, -XX:CompileCommandFile=/etc/cassandra/hotspot_compiler, -javaagent:/usr/share/cassandra/lib/jamm-0.3.0.jar, -XX:+UseThreadPriorities, -XX:ThreadPriorityPolicy=42, -XX:+HeapDumpOnOutOfMemoryError, -Djava.net.preferIPv4Stack=true, -Dcassandra.jmx.local.port=7199, -XX:+DisableExplicitGC, -Djava.library.path=/usr/share/cassandra/lib/sigar-bin, -Dcassandra.libjemalloc=/usr/lib/x86_64-linux-gnu/libjemalloc.so.1, -Dlogback.configurationFile=logback.xml, -Dcassandra.logdir=/var/log/cassandra, -Dcassandra.storagedir=/var/lib/cassandra, -Dcassandra-foreground=yes]
WARN  21:44:09 Unable to lock JVM memory (ENOMEM). This can result in part of the JVM being swapped out, especially with mmapped I/O enabled. Increase RLIMIT_MEMLOCK or run Cassandra as root.
INFO  21:44:09 jemalloc seems to be preloaded from /usr/lib/x86_64-linux-gnu/libjemalloc.so.1
WARN  21:44:09 JMX is not enabled to receive remote connections. Please see cassandra-env.sh for more info.
WARN  21:44:09 OpenJDK is not recommended. Please upgrade to the newest Oracle Java release
INFO  21:44:09 Initializing SIGAR library
WARN  21:44:09 Cassandra server running in degraded mode. Is swap disabled? : true,  Address space adequate? : true,  nofile limit adequate? : false, nproc limit adequate? : false
WARN  21:44:09 Directory /var/lib/cassandra/data doesn't exist
WARN  21:44:09 Directory /var/lib/cassandra/commitlog doesn't exist
WARN  21:44:09 Directory /var/lib/cassandra/saved_caches doesn't exist
WARN  21:44:09 Directory /var/lib/cassandra/hints doesn't exist
INFO  21:44:10 Initializing system.IndexInfo
INFO  21:44:11 Initializing system.batches
INFO  21:44:11 Initializing system.paxos
INFO  21:44:11 Initializing system.local
INFO  21:44:11 Initializing system.peers
INFO  21:44:11 Initializing system.peer_events
INFO  21:44:11 Initializing system.range_xfers
INFO  21:44:11 Initializing system.compaction_history
INFO  21:44:11 Initializing system.sstable_activity
INFO  21:44:11 Initializing system.size_estimates
INFO  21:44:11 Initializing system.available_ranges
INFO  21:44:11 Initializing system.views_builds_in_progress
INFO  21:44:11 Initializing system.built_views
INFO  21:44:11 Initializing system.hints
INFO  21:44:11 Initializing system.batchlog
INFO  21:44:11 Initializing system.schema_keyspaces
INFO  21:44:11 Initializing system.schema_columnfamilies
INFO  21:44:11 Initializing system.schema_columns
INFO  21:44:11 Initializing system.schema_triggers
INFO  21:44:11 Initializing system.schema_usertypes
INFO  21:44:11 Initializing system.schema_functions
INFO  21:44:11 Initializing system.schema_aggregates
INFO  21:44:12 Initializing key cache with capacity of 24 MBs.
INFO  21:44:12 Initializing row cache with capacity of 0 MBs
INFO  21:44:12 Initializing counter cache with capacity of 12 MBs
INFO  21:44:12 Scheduling counter cache save to every 7200 seconds (going to save all keys).
INFO  21:44:12 Global buffer pool is enabled, when pool is exahusted (max is 512 mb) it will allocate on heap
INFO  21:44:12 Populating token metadata from system tables
INFO  21:44:12 Token metadata:
INFO  21:44:12 Initializing system_schema.keyspaces
INFO  21:44:12 Initializing system_schema.tables
INFO  21:44:12 Initializing system_schema.columns
INFO  21:44:12 Initializing system_schema.triggers
INFO  21:44:12 Initializing system_schema.dropped_columns
INFO  21:44:12 Initializing system_schema.views
INFO  21:44:12 Initializing system_schema.types
INFO  21:44:12 Initializing system_schema.functions
INFO  21:44:12 Initializing system_schema.aggregates
INFO  21:44:12 Initializing system_schema.indexes
INFO  21:44:12 Completed loading (3 ms; 5 keys) KeyCache cache
INFO  21:44:12 No commitlog files found; skipping replay
INFO  21:44:12 Populating token metadata from system tables
INFO  21:44:12 Token metadata:
INFO  21:44:13 Cassandra version: 3.0.10
INFO  21:44:13 Thrift API version: 20.1.0
INFO  21:44:13 CQL supported versions: 3.4.0 (default: 3.4.0)
INFO  21:44:13 Initializing index summary manager with a memory pool size of 24 MB and a resize interval of 60 minutes
INFO  21:44:13 Loading persisted ring state
WARN  21:44:13 No host ID found, created 0e766dce-02de-40ea-bb7a-6a002391b606 (Note: This should happen exactly once per node).
INFO  21:44:13 Starting up server gossip
INFO  21:44:13 Starting Messaging Service on /172.18.0.3:7000 (eth0)
INFO  21:44:13 This node will not auto bootstrap because it is configured to be a seed node.
INFO  21:44:13 Generated random tokens. tokens are [8326423056883187983, -3276623050197088240, -1410063418133003827, -4846619958143403034, 8729236961979203864, 3016530975678519407, -850080648072613085, 5008534870302674919, -5317948840609666483, 5893696663117365024, 7791843361411073036, 839603843745665556, 3432160310771559318, -8933038071993600799, -8966466897524311395, -4868934569557781680, -1995865685201510708, 5824389325363085344, -8997995189343801271, 1513294094349646724, -2692693847156560681, -362475665327844671, -397559029399252697, -4036865505167258218, -5737918934938476452, -1739335757449181509, -4608615312712442947, 6915217442234764429, 6862711510337703292, -8203294148560648084, 5423418373468390850, -3216177668659676930, -5494325677360690557, 5956191963645657777, -2798005062566732334, 851827313669256882, -5327958867431492, -1630362675738639065, -3094071220344247757, 1941404224849081850, -1592422895926632851, 5372009012229403480, -4423877115924477257, -7691081915596523835, -596604336602442964, 6222805142737126667, 278887720925605513, -1488122624312331541, 6166209468173707820, -6130798602483659262, -2825445908646205341, -9167322201217260693, 6200706158096743639, -7762626480487337266, -9083050926580749135, 2487345962996329675, -3727744964838832092, 8343636635591712172, -4010786163458382285, -7479582139547187669, 1059281925041439925, -1158364078984033754, 8980213835999319022, 18120575973005647, -3832397180565479539, -8020952559414443713, -5145203769518606267, -7262386296350519509, 1586617221714355030, -310764862512071287, 5640365499355516628, -6553314707070595020, -8427086232191983525, -6970936801261968437, -6720067303651607166, -7803476504805842615, -3669372522223835125, -3678634188808753075, 8708710795523116737, 6834360720425624915, -8487837076791917582, 8765761318522234415, -7200690997122636778, 8363654485979743000, -1574588762444024225, -6455158707360039762, 7745986060285377216, 6659133593290375097, -1345818193073165523, 6226285234031980833, 1135881120228208324, 5465251258144440226, -778522415059606305, -1145380679280142329, 833060264983318546, 4452349866244005060, -1408733079195725481, -4331930227107526049, -3544677045035024812, 1095088844505646173, 3955509606519887638, 43481736791741429, -9148521452632274860, -4448754778010333123, 5011895669890961553, 1177903447644070624, 47731289679962425, 8694532646364154767, 3982172462674084191, 8058260805414575804, 5846968322988904446, 4988029786139648165, -2593389118044185577, -7075585650547079114, 9191413917621756487, 5030491132710402772, -7428035317525262621, 5781408782401497123, 2762621388071611356, -5602619717168806577, 8372906576961653689, 3912860871924109325, -4595747918895514706, -5639088200141691113, 8282625333415931450, 3582360167277630671, -4110086087996938536, 4596305640384092510, -7222330512690614030, 9060890685879258325, -2609179422100489316, 1182917008973305139, 5662123224501757027, -5252817468768067495, -1097325129953494697, 2699410102975714723, -6952286804750639804, -2009893333375429605, -4016684225032711251, -435491501199598496, -9014178972970833332, 7361902147940196075, 168731533953218704, -2450869010500728468, -4932864883198275360, 7871225818871028415, 7054400715163601986, -550638069123057423, -7544029273929123462, 7174970215169934563, -1836897182125747099, -1519655811107492148, 5567929721432902304, 2059344066332225846, 784763001160711950, 8797262803456342795, -1397641166214239937, -6052493483262275392, -9078824847556780878, -5601130453965210573, 7865886125196049956, -651541996983853495, -4499431514362788512, 4784242609614522700, 834762507744141661, 2510854278181064332, 2191657187858787954, -6827144180289168398, 6405560494403343579, 9105959695284998515, -4497826784431071705, -8728404300724644781, 8924287087679984025, 5735458651917103867, -5520211297996397827, 7786331970111787837, 5112920307501786053, 8201813780544919019, -1959630463979424624, -4169020307081655707, -7602576518445393510, -4422507772390631652, 176557489736500518, -1957359425095040193, -630743702303240115, 5203291240108069128, 5720086934735144953, 7355338038292006611, -6582244460156894252, 3544869649376606801, 5371580184939902348, -2539643523845148398, -7369177831103529095, 3192633027351775379, 5520362623672063541, -6261029826850882432, -1022546577958694521, -694995895947831652, -3488291234804514864, 4653958670946890481, -6790970222501876387, -3638770359412194388, -2897008786590389371, 4203025691454502079, -1290352883857390147, -1565446137577480081, 8948284554559149913, 4163981836097392880, -1546743009501331539, 5983241415060747995, -6251628557803384282, -3900347554054428973, 2023539486057101462, 5068620125989371923, 3615283259296362380, -1516821162127534603, -5864467318305850801, -5470128962169511091, -5058611960151948854, -6268156806723777292, 8049052607682577394, -8739391289352571891, 6740409600051444036, -8453711353306201810, -7247406735105817062, 1630206959205341814, 6976224800635591985, -1804607473386229871, 4753943069173060151, -8564756906486151882, 4105964448142855774, 9202663338401049441, -1440415997962540500, 32503524172179009, -2683459781159638938, 4458698524604011807, 1805177073863313529, -1332600850480006882, -4783367774739147118, 4712165524493870967, -8366391396880864134, -6960792411026201334, -6902710784813816045, -7398303182319713856, -7250198865267942659, -7941990254614143491, 7010351573418869554, -8300529883100078236, -4788958648837243108, 4173236796495687798, -341340024173042638, -3469970187148049526, 3341259813854864036, -2626715210961869158, 1919066844673228418, -8404509636634567511]
INFO  21:44:13 Create new Keyspace: KeyspaceMetadata{name=system_traces, params=KeyspaceParams{durable_writes=true, replication=ReplicationParams{class=org.apache.cassandra.locator.SimpleStrategy, replication_factor=2}}, tables=[org.apache.cassandra.config.CFMetaData@2791a91c[cfId=c5e99f16-8677-3914-b17e-960613512345,ksName=system_traces,cfName=sessions,flags=[COMPOUND],params=TableParams{comment=tracing sessions, read_repair_chance=0.0, dclocal_read_repair_chance=0.0, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=0, default_time_to_live=0, memtable_flush_period_in_ms=3600000, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(),partitionColumns=[[] | [client command coordinator duration request started_at parameters]],partitionKeyColumns=[ColumnDefinition{name=session_id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}],clusteringColumns=[],keyValidator=org.apache.cassandra.db.marshal.UUIDType,columnMetadata=[ColumnDefinition{name=client, type=org.apache.cassandra.db.marshal.InetAddressType, kind=REGULAR, position=-1}, ColumnDefinition{name=command, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=session_id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=coordinator, type=org.apache.cassandra.db.marshal.InetAddressType, kind=REGULAR, position=-1}, ColumnDefinition{name=request, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=started_at, type=org.apache.cassandra.db.marshal.TimestampType, kind=REGULAR, position=-1}, ColumnDefinition{name=duration, type=org.apache.cassandra.db.marshal.Int32Type, kind=REGULAR, position=-1}, ColumnDefinition{name=parameters, type=org.apache.cassandra.db.marshal.MapType(org.apache.cassandra.db.marshal.UTF8Type,org.apache.cassandra.db.marshal.UTF8Type), kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]], org.apache.cassandra.config.CFMetaData@5fb8f594[cfId=8826e8e9-e16a-3728-8753-3bc1fc713c25,ksName=system_traces,cfName=events,flags=[COMPOUND],params=TableParams{comment=tracing events, read_repair_chance=0.0, dclocal_read_repair_chance=0.0, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=0, default_time_to_live=0, memtable_flush_period_in_ms=3600000, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.TimeUUIDType),partitionColumns=[[] | [activity source source_elapsed thread]],partitionKeyColumns=[ColumnDefinition{name=session_id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=event_id, type=org.apache.cassandra.db.marshal.TimeUUIDType, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UUIDType,columnMetadata=[ColumnDefinition{name=activity, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=session_id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=thread, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=event_id, type=org.apache.cassandra.db.marshal.TimeUUIDType, kind=CLUSTERING, position=0}, ColumnDefinition{name=source, type=org.apache.cassandra.db.marshal.InetAddressType, kind=REGULAR, position=-1}, ColumnDefinition{name=source_elapsed, type=org.apache.cassandra.db.marshal.Int32Type, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]]], views=[], functions=[], types=[]}
INFO  21:44:14 Initializing system_traces.events
INFO  21:44:14 Initializing system_traces.sessions
INFO  21:44:14 Create new Keyspace: KeyspaceMetadata{name=system_distributed, params=KeyspaceParams{durable_writes=true, replication=ReplicationParams{class=org.apache.cassandra.locator.SimpleStrategy, replication_factor=3}}, tables=[org.apache.cassandra.config.CFMetaData@41adeb6d[cfId=759fffad-624b-3181-80ee-fa9a52d1f627,ksName=system_distributed,cfName=repair_history,flags=[COMPOUND],params=TableParams{comment=Repair history, read_repair_chance=0.0, dclocal_read_repair_chance=0.0, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=0, default_time_to_live=0, memtable_flush_period_in_ms=3600000, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.TimeUUIDType),partitionColumns=[[] | [coordinator exception_message exception_stacktrace finished_at parent_id range_begin range_end started_at status participants]],partitionKeyColumns=[ColumnDefinition{name=keyspace_name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=columnfamily_name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=1}],clusteringColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.TimeUUIDType, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.CompositeType(org.apache.cassandra.db.marshal.UTF8Type,org.apache.cassandra.db.marshal.UTF8Type),columnMetadata=[ColumnDefinition{name=status, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.TimeUUIDType, kind=CLUSTERING, position=0}, ColumnDefinition{name=coordinator, type=org.apache.cassandra.db.marshal.InetAddressType, kind=REGULAR, position=-1}, ColumnDefinition{name=finished_at, type=org.apache.cassandra.db.marshal.TimestampType, kind=REGULAR, position=-1}, ColumnDefinition{name=participants, type=org.apache.cassandra.db.marshal.SetType(org.apache.cassandra.db.marshal.InetAddressType), kind=REGULAR, position=-1}, ColumnDefinition{name=exception_stacktrace, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=parent_id, type=org.apache.cassandra.db.marshal.TimeUUIDType, kind=REGULAR, position=-1}, ColumnDefinition{name=range_end, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=range_begin, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=exception_message, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=keyspace_name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=started_at, type=org.apache.cassandra.db.marshal.TimestampType, kind=REGULAR, position=-1}, ColumnDefinition{name=columnfamily_name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=1}],droppedColumns={},triggers=[],indexes=[]], org.apache.cassandra.config.CFMetaData@4393c4b[cfId=deabd734-b99d-3b9c-92e5-fd92eb5abf14,ksName=system_distributed,cfName=parent_repair_history,flags=[COMPOUND],params=TableParams{comment=Repair history, read_repair_chance=0.0, dclocal_read_repair_chance=0.0, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=0, default_time_to_live=0, memtable_flush_period_in_ms=3600000, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(),partitionColumns=[[] | [exception_message exception_stacktrace finished_at keyspace_name started_at columnfamily_names requested_ranges successful_ranges]],partitionKeyColumns=[ColumnDefinition{name=parent_id, type=org.apache.cassandra.db.marshal.TimeUUIDType, kind=PARTITION_KEY, position=0}],clusteringColumns=[],keyValidator=org.apache.cassandra.db.marshal.TimeUUIDType,columnMetadata=[ColumnDefinition{name=requested_ranges, type=org.apache.cassandra.db.marshal.SetType(org.apache.cassandra.db.marshal.UTF8Type), kind=REGULAR, position=-1}, ColumnDefinition{name=exception_message, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=keyspace_name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=successful_ranges, type=org.apache.cassandra.db.marshal.SetType(org.apache.cassandra.db.marshal.UTF8Type), kind=REGULAR, position=-1}, ColumnDefinition{name=started_at, type=org.apache.cassandra.db.marshal.TimestampType, kind=REGULAR, position=-1}, ColumnDefinition{name=finished_at, type=org.apache.cassandra.db.marshal.TimestampType, kind=REGULAR, position=-1}, ColumnDefinition{name=exception_stacktrace, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=parent_id, type=org.apache.cassandra.db.marshal.TimeUUIDType, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=columnfamily_names, type=org.apache.cassandra.db.marshal.SetType(org.apache.cassandra.db.marshal.UTF8Type), kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]]], views=[], functions=[], types=[]}
INFO  21:44:14 Initializing system_distributed.parent_repair_history
INFO  21:44:14 Initializing system_distributed.repair_history
INFO  21:44:14 Create new Keyspace: KeyspaceMetadata{name=system_auth, params=KeyspaceParams{durable_writes=true, replication=ReplicationParams{class=org.apache.cassandra.locator.SimpleStrategy, replication_factor=1}}, tables=[org.apache.cassandra.config.CFMetaData@37cbc663[cfId=5bc52802-de25-35ed-aeab-188eecebb090,ksName=system_auth,cfName=roles,flags=[COMPOUND],params=TableParams{comment=role definitions, read_repair_chance=0.0, dclocal_read_repair_chance=0.0, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=7776000, default_time_to_live=0, memtable_flush_period_in_ms=3600000, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(),partitionColumns=[[] | [can_login is_superuser salted_hash member_of]],partitionKeyColumns=[ColumnDefinition{name=role, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}],clusteringColumns=[],keyValidator=org.apache.cassandra.db.marshal.UTF8Type,columnMetadata=[ColumnDefinition{name=role, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=salted_hash, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=member_of, type=org.apache.cassandra.db.marshal.SetType(org.apache.cassandra.db.marshal.UTF8Type), kind=REGULAR, position=-1}, ColumnDefinition{name=can_login, type=org.apache.cassandra.db.marshal.BooleanType, kind=REGULAR, position=-1}, ColumnDefinition{name=is_superuser, type=org.apache.cassandra.db.marshal.BooleanType, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]], org.apache.cassandra.config.CFMetaData@43b187f1[cfId=0ecdaa87-f8fb-3e60-88d1-74fb36fe5c0d,ksName=system_auth,cfName=role_members,flags=[COMPOUND],params=TableParams{comment=role memberships lookup table, read_repair_chance=0.0, dclocal_read_repair_chance=0.0, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=7776000, default_time_to_live=0, memtable_flush_period_in_ms=3600000, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UTF8Type),partitionColumns=[[] | []],partitionKeyColumns=[ColumnDefinition{name=role, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=member, type=org.apache.cassandra.db.marshal.UTF8Type, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UTF8Type,columnMetadata=[ColumnDefinition{name=role, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=member, type=org.apache.cassandra.db.marshal.UTF8Type, kind=CLUSTERING, position=0}],droppedColumns={},triggers=[],indexes=[]], org.apache.cassandra.config.CFMetaData@37ee43e5[cfId=3afbe79f-2194-31a7-add7-f5ab90d8ec9c,ksName=system_auth,cfName=role_permissions,flags=[COMPOUND],params=TableParams{comment=permissions granted to db roles, read_repair_chance=0.0, dclocal_read_repair_chance=0.0, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=7776000, default_time_to_live=0, memtable_flush_period_in_ms=3600000, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UTF8Type),partitionColumns=[[] | [permissions]],partitionKeyColumns=[ColumnDefinition{name=role, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=resource, type=org.apache.cassandra.db.marshal.UTF8Type, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UTF8Type,columnMetadata=[ColumnDefinition{name=resource, type=org.apache.cassandra.db.marshal.UTF8Type, kind=CLUSTERING, position=0}, ColumnDefinition{name=role, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=permissions, type=org.apache.cassandra.db.marshal.SetType(org.apache.cassandra.db.marshal.UTF8Type), kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]], org.apache.cassandra.config.CFMetaData@c2d5e98[cfId=5f2fbdad-91f1-3946-bd25-d5da3a5c35ec,ksName=system_auth,cfName=resource_role_permissons_index,flags=[COMPOUND],params=TableParams{comment=index of db roles with permissions granted on a resource, read_repair_chance=0.0, dclocal_read_repair_chance=0.0, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=7776000, default_time_to_live=0, memtable_flush_period_in_ms=3600000, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UTF8Type),partitionColumns=[[] | []],partitionKeyColumns=[ColumnDefinition{name=resource, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=role, type=org.apache.cassandra.db.marshal.UTF8Type, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UTF8Type,columnMetadata=[ColumnDefinition{name=resource, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=role, type=org.apache.cassandra.db.marshal.UTF8Type, kind=CLUSTERING, position=0}],droppedColumns={},triggers=[],indexes=[]]], views=[], functions=[], types=[]}
INFO  21:44:14 Initializing system_auth.resource_role_permissons_index
INFO  21:44:14 Initializing system_auth.role_members
INFO  21:44:14 Initializing system_auth.role_permissions
INFO  21:44:14 Initializing system_auth.roles
INFO  21:44:14 Waiting for gossip to settle before accepting client requests...
INFO  21:44:22 No gossip backlog; proceeding
INFO  21:44:22 Netty using native Epoll event loop
INFO  21:44:22 Using Netty Version: [netty-buffer=netty-buffer-4.0.23.Final.208198c, netty-codec=netty-codec-4.0.23.Final.208198c, netty-codec-http=netty-codec-http-4.0.23.Final.208198c, netty-codec-socks=netty-codec-socks-4.0.23.Final.208198c, netty-common=netty-common-4.0.23.Final.208198c, netty-handler=netty-handler-4.0.23.Final.208198c, netty-transport=netty-transport-4.0.23.Final.208198c, netty-transport-rxtx=netty-transport-rxtx-4.0.23.Final.208198c, netty-transport-sctp=netty-transport-sctp-4.0.23.Final.208198c, netty-transport-udt=netty-transport-udt-4.0.23.Final.208198c]
INFO  21:44:22 Starting listening for CQL clients on /0.0.0.0:9042 (unencrypted)...
INFO  21:44:22 Not starting RPC server as requested. Use JMX (StorageService->startRPCServer()) or nodetool (enablethrift) to start it
INFO  21:44:24 Created default superuser role 'cassandra'
INFO  21:44:32 Create new Keyspace: KeyspaceMetadata{name=skill_directory_keyspace, params=KeyspaceParams{durable_writes=true, replication=ReplicationParams{class=org.apache.cassandra.locator.SimpleStrategy, replication_factor=1}}, tables=[], views=[], functions=[], types=[]}
INFO  21:44:32 Create new table: org.apache.cassandra.config.CFMetaData@40806b22[cfId=ce2e58a0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=skills,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(),partitionColumns=[[] | [name skill_type]],partitionKeyColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}],clusteringColumns=[],keyValidator=org.apache.cassandra.db.marshal.UUIDType,columnMetadata=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=skill_type, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]]
INFO  21:44:32 Initializing skill_directory_keyspace.skills
INFO  21:44:32 Create new table: org.apache.cassandra.config.CFMetaData@7aa7ed86[cfId=ce4981c0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=links,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UUIDType),partitionColumns=[[] | [link_type name url]],partitionKeyColumns=[ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UUIDType,columnMetadata=[ColumnDefinition{name=link_type, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}, ColumnDefinition{name=name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=url, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]]
INFO  21:44:32 Initializing skill_directory_keyspace.links
INFO  21:44:32 Create new table: org.apache.cassandra.config.CFMetaData@4cf97507[cfId=ce62fd30-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=teammembers,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(),partitionColumns=[[] | [name title]],partitionKeyColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}],clusteringColumns=[],keyValidator=org.apache.cassandra.db.marshal.UUIDType,columnMetadata=[ColumnDefinition{name=title, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]]
INFO  21:44:32 Initializing skill_directory_keyspace.teammembers
INFO  21:44:32 Create new table: org.apache.cassandra.config.CFMetaData@484bfe3[cfId=ce7acaf0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=tmskills,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UUIDType),partitionColumns=[[] | [proficiency skill_id wish_list]],partitionKeyColumns=[ColumnDefinition{name=team_member_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UTF8Type,columnMetadata=[ColumnDefinition{name=proficiency, type=org.apache.cassandra.db.marshal.Int32Type, kind=REGULAR, position=-1}, ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}, ColumnDefinition{name=team_member_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=wish_list, type=org.apache.cassandra.db.marshal.BooleanType, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]]
INFO  21:44:32 Initializing skill_directory_keyspace.tmskills
INFO  21:44:32 Create new table: org.apache.cassandra.config.CFMetaData@65dc0375[cfId=ce9816f0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=skillreviews,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UUIDType),partitionColumns=[[] | [body positive team_member_id timestamp]],partitionKeyColumns=[ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UTF8Type,columnMetadata=[ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=positive, type=org.apache.cassandra.db.marshal.BooleanType, kind=REGULAR, position=-1}, ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}, ColumnDefinition{name=body, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=timestamp, type=org.apache.cassandra.db.marshal.TimestampType, kind=REGULAR, position=-1}, ColumnDefinition{name=team_member_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]]
INFO  21:44:33 Initializing skill_directory_keyspace.skillreviews
INFO  21:44:33 Update table 'skill_directory_keyspace/skills' From org.apache.cassandra.config.CFMetaData@1bb87f5d[cfId=ce2e58a0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=skills,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={max_threshold=32, min_threshold=4}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(),partitionColumns=[[] | [name skill_type]],partitionKeyColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}],clusteringColumns=[],keyValidator=org.apache.cassandra.db.marshal.UUIDType,columnMetadata=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=skill_type, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]] To org.apache.cassandra.config.CFMetaData@2f900ab2[cfId=ce2e58a0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=skills,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={max_threshold=32, min_threshold=4}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(),partitionColumns=[[] | [name skill_type]],partitionKeyColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}],clusteringColumns=[],keyValidator=org.apache.cassandra.db.marshal.UUIDType,columnMetadata=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=skill_type, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[org.apache.cassandra.schema.IndexMetadata@18e041d[id=c7881146-dc27-3a08-a665-4ee42902b25d,name=skills_skill_type_idx,kind=COMPOSITES,options={target=skill_type}]]]
INFO  21:44:33 Initializing skill_directory_keyspace.skills.skills_skill_type_idx
INFO  21:44:33 Update table 'skill_directory_keyspace/tmskills' From org.apache.cassandra.config.CFMetaData@3a76977c[cfId=ce7acaf0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=tmskills,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={max_threshold=32, min_threshold=4}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UUIDType),partitionColumns=[[] | [proficiency skill_id wish_list]],partitionKeyColumns=[ColumnDefinition{name=team_member_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UTF8Type,columnMetadata=[ColumnDefinition{name=proficiency, type=org.apache.cassandra.db.marshal.Int32Type, kind=REGULAR, position=-1}, ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}, ColumnDefinition{name=team_member_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=wish_list, type=org.apache.cassandra.db.marshal.BooleanType, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]] To org.apache.cassandra.config.CFMetaData@33a3c6c9[cfId=ce7acaf0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=tmskills,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={max_threshold=32, min_threshold=4}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UUIDType),partitionColumns=[[] | [proficiency skill_id wish_list]],partitionKeyColumns=[ColumnDefinition{name=team_member_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UTF8Type,columnMetadata=[ColumnDefinition{name=proficiency, type=org.apache.cassandra.db.marshal.Int32Type, kind=REGULAR, position=-1}, ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}, ColumnDefinition{name=team_member_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=wish_list, type=org.apache.cassandra.db.marshal.BooleanType, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[org.apache.cassandra.schema.IndexMetadata@1be39676[id=bf647b96-1ed2-3bf2-b52f-6c1b9c71fd36,name=tmskills_id_idx,kind=COMPOSITES,options={target=id}]]]
INFO  21:44:33 Initializing skill_directory_keyspace.tmskills.tmskills_id_idx
INFO  21:44:33 Update table 'skill_directory_keyspace/links' From org.apache.cassandra.config.CFMetaData@3e8836fa[cfId=ce4981c0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=links,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={max_threshold=32, min_threshold=4}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UUIDType),partitionColumns=[[] | [link_type name url]],partitionKeyColumns=[ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UUIDType,columnMetadata=[ColumnDefinition{name=link_type, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}, ColumnDefinition{name=name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=url, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]] To org.apache.cassandra.config.CFMetaData@778e6011[cfId=ce4981c0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=links,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={max_threshold=32, min_threshold=4}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UUIDType),partitionColumns=[[] | [link_type name url]],partitionKeyColumns=[ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UUIDType,columnMetadata=[ColumnDefinition{name=link_type, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}, ColumnDefinition{name=name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=url, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[org.apache.cassandra.schema.IndexMetadata@16101a33[id=de71a04c-aeae-3a42-a065-65c6091aa10a,name=links_id_idx,kind=COMPOSITES,options={target=id}]]]
INFO  21:44:34 Initializing skill_directory_keyspace.links.links_id_idx
INFO  21:44:34 Update table 'skill_directory_keyspace/skillreviews' From org.apache.cassandra.config.CFMetaData@67c6b259[cfId=ce9816f0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=skillreviews,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={max_threshold=32, min_threshold=4}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UUIDType),partitionColumns=[[] | [body positive team_member_id timestamp]],partitionKeyColumns=[ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UTF8Type,columnMetadata=[ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=positive, type=org.apache.cassandra.db.marshal.BooleanType, kind=REGULAR, position=-1}, ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}, ColumnDefinition{name=body, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=timestamp, type=org.apache.cassandra.db.marshal.TimestampType, kind=REGULAR, position=-1}, ColumnDefinition{name=team_member_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]] To org.apache.cassandra.config.CFMetaData@3c435610[cfId=ce9816f0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=skillreviews,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={max_threshold=32, min_threshold=4}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UUIDType),partitionColumns=[[] | [body positive team_member_id timestamp]],partitionKeyColumns=[ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UTF8Type,columnMetadata=[ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=positive, type=org.apache.cassandra.db.marshal.BooleanType, kind=REGULAR, position=-1}, ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}, ColumnDefinition{name=body, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=timestamp, type=org.apache.cassandra.db.marshal.TimestampType, kind=REGULAR, position=-1}, ColumnDefinition{name=team_member_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[org.apache.cassandra.schema.IndexMetadata@4da34907[id=1dc25e0a-24ea-301f-9e85-702240b5fad1,name=skillreviews_id_idx,kind=COMPOSITES,options={target=id}]]]
INFO  21:44:34 Initializing skill_directory_keyspace.skillreviews.skillreviews_id_idx
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ docker ps
CONTAINER ID        IMAGE                                   COMMAND                  CREATED              STATUS              PORTS                                                       NAMES
500ceb29255a        maryville/skilldirectorycassandra:dev   "/docker-entrypoint.s"   About a minute ago   Up 59 seconds       7000-7001/tcp, 7199/tcp, 9160/tcp, 0.0.0.0:9042->9042/tcp   cassandra_container
a75bccccea96        maryville/skilldirectory:dev            "/bin/bash -c '/bin/s"   About a minute ago   Up 32 seconds       0.0.0.0:8080->8080/tcp                                      skilldirectory_container
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ docker logs skilldirectory_container
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:06Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:06Z" level=debug msg="Using Password: cassandra"
time="2017-01-09T21:44:06Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
panic: (*logrus.Entry) (0x736e60,0xc420011310)

goroutine 1 [running]:
panic(0x736e60, 0xc420011310)
	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory/router.initializeCassandra()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory/router.StartRouter(0x0)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
main.main()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:06Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:06Z" level=debug msg="Using Password: cassandra"
time="2017-01-09T21:44:06Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
panic: (*logrus.Entry) (0x736e60,0xc420011310)

goroutine 1 [running]:
panic(0x736e60, 0xc420011310)
	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory/router.initializeCassandra()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory/router.StartRouter(0x0)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
main.main()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:06Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:06Z" level=debug msg="Using Password: cassandra"
time="2017-01-09T21:44:06Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
panic: (*logrus.Entry) (0x736e60,0xc420011310)

goroutine 1 [running]:
panic(0x736e60, 0xc420011310)
	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory/router.initializeCassandra()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory/router.StartRouter(0x0)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
main.main()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
time="2017-01-09T21:44:07Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:07Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:07Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:07Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:07Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:07Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:07Z" level=debug msg="Using Password: cassandra"
time="2017-01-09T21:44:07Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
panic: (*logrus.Entry) (0x736e60,0xc420011310)

goroutine 1 [running]:
panic(0x736e60, 0xc420011310)
	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory/router.initializeCassandra()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory/router.StartRouter(0x0)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
main.main()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
time="2017-01-09T21:44:08Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:08Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:08Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:08Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:08Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:08Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:08Z" level=debug msg="Using Password: cassandra"
time="2017-01-09T21:44:08Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
panic: (*logrus.Entry) (0x736e60,0xc420011310)

goroutine 1 [running]:
panic(0x736e60, 0xc420011310)
	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory/router.initializeCassandra()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory/router.StartRouter(0x0)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
main.main()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
time="2017-01-09T21:44:10Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:10Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:10Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:10Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:10Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:10Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:10Z" level=debug msg="Using Password: cassandra"
time="2017-01-09T21:44:10Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
panic: (*logrus.Entry) (0x736e60,0xc420011310)

goroutine 1 [running]:
panic(0x736e60, 0xc420011310)
	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory/router.initializeCassandra()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory/router.StartRouter(0x0)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
main.main()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
time="2017-01-09T21:44:13Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:13Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:13Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:13Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:13Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:13Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:13Z" level=debug msg="Using Password: cassandra"
time="2017-01-09T21:44:13Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
panic: (*logrus.Entry) (0x736e60,0xc420011310)

goroutine 1 [running]:
panic(0x736e60, 0xc420011310)
	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory/router.initializeCassandra()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory/router.StartRouter(0x0)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
main.main()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
time="2017-01-09T21:44:20Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:20Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:20Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:20Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:20Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:20Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:20Z" level=debug msg="Using Password: cassandra"
time="2017-01-09T21:44:20Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
panic: (*logrus.Entry) (0x736e60,0xc420011310)

goroutine 1 [running]:
panic(0x736e60, 0xc420011310)
	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory/router.initializeCassandra()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory/router.StartRouter(0x0)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
main.main()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
time="2017-01-09T21:44:33Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:33Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:33Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:33Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:33Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:33Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:33Z" level=debug msg="Using Password: cassandra"
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ docker logs -f skilldirectory_container
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:06Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:06Z" level=debug msg="Using Password: cassandra"
time="2017-01-09T21:44:06Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
panic: (*logrus.Entry) (0x736e60,0xc420011310)

goroutine 1 [running]:
panic(0x736e60, 0xc420011310)
	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory/router.initializeCassandra()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory/router.StartRouter(0x0)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
main.main()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:06Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:06Z" level=debug msg="Using Password: cassandra"
time="2017-01-09T21:44:06Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
panic: (*logrus.Entry) (0x736e60,0xc420011310)

goroutine 1 [running]:
panic(0x736e60, 0xc420011310)
	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory/router.initializeCassandra()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory/router.StartRouter(0x0)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
main.main()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:06Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:06Z" level=debug msg="Using Password: cassandra"
time="2017-01-09T21:44:06Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
panic: (*logrus.Entry) (0x736e60,0xc420011310)

goroutine 1 [running]:
panic(0x736e60, 0xc420011310)
	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory/router.initializeCassandra()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory/router.StartRouter(0x0)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
main.main()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
time="2017-01-09T21:44:07Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:07Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:07Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:07Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:07Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:07Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:07Z" level=debug msg="Using Password: cassandra"
time="2017-01-09T21:44:07Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
panic: (*logrus.Entry) (0x736e60,0xc420011310)

goroutine 1 [running]:
panic(0x736e60, 0xc420011310)
	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory/router.initializeCassandra()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory/router.StartRouter(0x0)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
main.main()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
time="2017-01-09T21:44:08Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:08Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:08Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:08Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:08Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:08Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:08Z" level=debug msg="Using Password: cassandra"
time="2017-01-09T21:44:08Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
panic: (*logrus.Entry) (0x736e60,0xc420011310)

goroutine 1 [running]:
panic(0x736e60, 0xc420011310)
	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory/router.initializeCassandra()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory/router.StartRouter(0x0)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
main.main()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
time="2017-01-09T21:44:10Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:10Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:10Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:10Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:10Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:10Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:10Z" level=debug msg="Using Password: cassandra"
time="2017-01-09T21:44:10Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
panic: (*logrus.Entry) (0x736e60,0xc420011310)

goroutine 1 [running]:
panic(0x736e60, 0xc420011310)
	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory/router.initializeCassandra()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory/router.StartRouter(0x0)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
main.main()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
time="2017-01-09T21:44:13Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:13Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:13Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:13Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:13Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:13Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:13Z" level=debug msg="Using Password: cassandra"
time="2017-01-09T21:44:13Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
panic: (*logrus.Entry) (0x736e60,0xc420011310)

goroutine 1 [running]:
panic(0x736e60, 0xc420011310)
	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory/router.initializeCassandra()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory/router.StartRouter(0x0)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
main.main()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
time="2017-01-09T21:44:20Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:20Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:20Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:20Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:20Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:20Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:20Z" level=debug msg="Using Password: cassandra"
time="2017-01-09T21:44:20Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
panic: (*logrus.Entry) (0x736e60,0xc420011310)

goroutine 1 [running]:
panic(0x736e60, 0xc420011310)
	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory/router.initializeCassandra()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory/router.StartRouter(0x0)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
main.main()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
time="2017-01-09T21:44:33Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:33Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:33Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:33Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:33Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:33Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:33Z" level=debug msg="Using Password: cassandra"
skilldirectory_container^[[A^[[A^C[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ ^C
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ docker logs skilldirectory_container
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:06Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:06Z" level=debug msg="Using Password: cassandra"
time="2017-01-09T21:44:06Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
panic: (*logrus.Entry) (0x736e60,0xc420011310)

goroutine 1 [running]:
panic(0x736e60, 0xc420011310)
	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory/router.initializeCassandra()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory/router.StartRouter(0x0)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
main.main()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:06Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:06Z" level=debug msg="Using Password: cassandra"
time="2017-01-09T21:44:06Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
panic: (*logrus.Entry) (0x736e60,0xc420011310)

goroutine 1 [running]:
panic(0x736e60, 0xc420011310)
	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory/router.initializeCassandra()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory/router.StartRouter(0x0)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
main.main()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:06Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:06Z" level=debug msg="Using Password: cassandra"
time="2017-01-09T21:44:06Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
panic: (*logrus.Entry) (0x736e60,0xc420011310)

goroutine 1 [running]:
panic(0x736e60, 0xc420011310)
	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory/router.initializeCassandra()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory/router.StartRouter(0x0)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
main.main()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
time="2017-01-09T21:44:07Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:07Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:07Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:07Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:07Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:07Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:07Z" level=debug msg="Using Password: cassandra"
time="2017-01-09T21:44:07Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
panic: (*logrus.Entry) (0x736e60,0xc420011310)

goroutine 1 [running]:
panic(0x736e60, 0xc420011310)
	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory/router.initializeCassandra()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory/router.StartRouter(0x0)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
main.main()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
time="2017-01-09T21:44:08Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:08Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:08Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:08Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:08Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:08Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:08Z" level=debug msg="Using Password: cassandra"
time="2017-01-09T21:44:08Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
panic: (*logrus.Entry) (0x736e60,0xc420011310)

goroutine 1 [running]:
panic(0x736e60, 0xc420011310)
	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory/router.initializeCassandra()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory/router.StartRouter(0x0)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
main.main()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
time="2017-01-09T21:44:10Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:10Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:10Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:10Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:10Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:10Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:10Z" level=debug msg="Using Password: cassandra"
time="2017-01-09T21:44:10Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
panic: (*logrus.Entry) (0x736e60,0xc420011310)

goroutine 1 [running]:
panic(0x736e60, 0xc420011310)
	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory/router.initializeCassandra()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory/router.StartRouter(0x0)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
main.main()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
time="2017-01-09T21:44:13Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:13Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:13Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:13Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:13Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:13Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:13Z" level=debug msg="Using Password: cassandra"
time="2017-01-09T21:44:13Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
panic: (*logrus.Entry) (0x736e60,0xc420011310)

goroutine 1 [running]:
panic(0x736e60, 0xc420011310)
	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory/router.initializeCassandra()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory/router.StartRouter(0x0)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
main.main()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
time="2017-01-09T21:44:20Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:20Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:20Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:20Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:20Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:20Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:20Z" level=debug msg="Using Password: cassandra"
time="2017-01-09T21:44:20Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
panic: (*logrus.Entry) (0x736e60,0xc420011310)

goroutine 1 [running]:
panic(0x736e60, 0xc420011310)
	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory/router.initializeCassandra()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory/router.StartRouter(0x0)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
main.main()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
time="2017-01-09T21:44:33Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:33Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:33Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:33Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:33Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:33Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:33Z" level=debug msg="Using Password: cassandra"
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ docker logs -f skilldirectory_container
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:06Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:06Z" level=debug msg="Using Password: cassandra"
time="2017-01-09T21:44:06Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
panic: (*logrus.Entry) (0x736e60,0xc420011310)

goroutine 1 [running]:
panic(0x736e60, 0xc420011310)
	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory/router.initializeCassandra()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory/router.StartRouter(0x0)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
main.main()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:06Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:06Z" level=debug msg="Using Password: cassandra"
time="2017-01-09T21:44:06Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
panic: (*logrus.Entry) (0x736e60,0xc420011310)

goroutine 1 [running]:
panic(0x736e60, 0xc420011310)
	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory/router.initializeCassandra()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory/router.StartRouter(0x0)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
main.main()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:06Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:06Z" level=debug msg="Using Password: cassandra"
time="2017-01-09T21:44:06Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
panic: (*logrus.Entry) (0x736e60,0xc420011310)

goroutine 1 [running]:
panic(0x736e60, 0xc420011310)
	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory/router.initializeCassandra()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory/router.StartRouter(0x0)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
main.main()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
time="2017-01-09T21:44:07Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:07Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:07Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:07Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:07Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:07Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:07Z" level=debug msg="Using Password: cassandra"
time="2017-01-09T21:44:07Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
panic: (*logrus.Entry) (0x736e60,0xc420011310)

goroutine 1 [running]:
panic(0x736e60, 0xc420011310)
	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory/router.initializeCassandra()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory/router.StartRouter(0x0)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
main.main()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
time="2017-01-09T21:44:08Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:08Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:08Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:08Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:08Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:08Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:08Z" level=debug msg="Using Password: cassandra"
time="2017-01-09T21:44:08Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
panic: (*logrus.Entry) (0x736e60,0xc420011310)

goroutine 1 [running]:
panic(0x736e60, 0xc420011310)
	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory/router.initializeCassandra()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory/router.StartRouter(0x0)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
main.main()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
time="2017-01-09T21:44:10Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:10Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:10Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:10Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:10Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:10Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:10Z" level=debug msg="Using Password: cassandra"
time="2017-01-09T21:44:10Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
panic: (*logrus.Entry) (0x736e60,0xc420011310)

goroutine 1 [running]:
panic(0x736e60, 0xc420011310)
	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory/router.initializeCassandra()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory/router.StartRouter(0x0)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
main.main()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
time="2017-01-09T21:44:13Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:13Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:13Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:13Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:13Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:13Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:13Z" level=debug msg="Using Password: cassandra"
time="2017-01-09T21:44:13Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
panic: (*logrus.Entry) (0x736e60,0xc420011310)

goroutine 1 [running]:
panic(0x736e60, 0xc420011310)
	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory/router.initializeCassandra()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory/router.StartRouter(0x0)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
main.main()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
time="2017-01-09T21:44:20Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:20Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:20Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:20Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:20Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:20Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:20Z" level=debug msg="Using Password: cassandra"
time="2017-01-09T21:44:20Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
panic: (*logrus.Entry) (0x736e60,0xc420011310)

goroutine 1 [running]:
panic(0x736e60, 0xc420011310)
	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory/router.initializeCassandra()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory/router.StartRouter(0x0)
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
main.main()
	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
time="2017-01-09T21:44:33Z" level=info msg="Getting Env: CASSANDRA_URL"
time="2017-01-09T21:44:33Z" level=info msg="Getting Env: CASSANDRA_PORT"
time="2017-01-09T21:44:33Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
time="2017-01-09T21:44:33Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
time="2017-01-09T21:44:33Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
time="2017-01-09T21:44:33Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
time="2017-01-09T21:44:33Z" level=debug msg="Using Password: cassandra"
time="2017-01-09T21:46:27Z" level=info msg="Handling Request: GET"
time="2017-01-09T21:46:27Z" level=debug msg="Request: &{{} {<nil>}}"
time="2017-01-09T21:46:27Z" level=debug msg="Performing query: SELECT JSON * FROM skills;"
time="2017-01-09T21:47:00Z" level=info msg="Handling Request: POST"
time="2017-01-09T21:47:00Z" level=debug msg="Request: &{%!s(*io.LimitedReader=&{0xc4200e1860 49}) <nil> %!s(*bufio.Reader=<nil>) %!s(bool=false) %!s(bool=true) {%!s(int32=0) %!s(uint32=0)} %!s(bool=false) %!s(bool=false) %!s(bool=false) %!s(func()=<nil>)}"
time="2017-01-09T21:47:00Z" level=warning msg="Handler Method: POST, *errors.InvalidDataModelState: the \"skill_id\" field of all TMSkills must contain ID of an existing skill in the database"
time="2017-01-09T21:47:12Z" level=info msg="Handling Request: POST"
time="2017-01-09T21:47:12Z" level=debug msg="Request: &{%!s(*io.LimitedReader=&{0xc4200e1860 60}) <nil> %!s(*bufio.Reader=<nil>) %!s(bool=false) %!s(bool=true) {%!s(int32=0) %!s(uint32=0)} %!s(bool=false) %!s(bool=false) %!s(bool=false) %!s(func()=<nil>)}"
time="2017-01-09T21:47:12Z" level=info msg="Saved Team Member: Yogi Bear"
time="2017-01-09T21:48:20Z" level=info msg="Handling Request: GET"
time="2017-01-09T21:48:20Z" level=debug msg="Request: &{{} {<nil>}}"
time="2017-01-09T21:48:20Z" level=debug msg="Performing query: SELECT JSON * FROM teammembers;"
time="2017-01-09T21:48:40Z" level=info msg="Handling Request: POST"
time="2017-01-09T21:48:40Z" level=debug msg="Request: &{%!s(*io.LimitedReader=&{0xc4200e1860 47}) <nil> %!s(*bufio.Reader=<nil>) %!s(bool=false) %!s(bool=true) {%!s(int32=0) %!s(uint32=0)} %!s(bool=false) %!s(bool=false) %!s(bool=false) %!s(func()=<nil>)}"
time="2017-01-09T21:48:40Z" level=info msg="Saved skill: Java"
time="2017-01-09T21:48:55Z" level=info msg="Handling Request: GET"
time="2017-01-09T21:48:55Z" level=debug msg="Request: &{{} {<nil>}}"
time="2017-01-09T21:48:55Z" level=debug msg="Performing query: SELECT JSON * FROM skills;"
ec2-54-91-229-122.compute-1.amazonaws.com:8080/skills/docker^[[B
^C[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ ^C
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ docker-compose u-
No such command: u_

Commands:
  build              Build or rebuild services
  bundle             Generate a Docker bundle from the Compose file
  config             Validate and view the compose file
  create             Create services
  down               Stop and remove containers, networks, images, and volumes
  events             Receive real time events from containers
  exec               Execute a command in a running container
  help               Get help on a command
  kill               Kill containers
  logs               View output from containers
  pause              Pause services
  port               Print the public port for a port binding
  ps                 List containers
  pull               Pull service images
  push               Push service images
  restart            Restart services
  rm                 Remove stopped containers
  run                Run a one-off command
  scale              Set number of containers for a service
  start              Start services
  stop               Stop services
  unpause            Unpause services
  up                 Create and start containers
  version            Show the Docker-Compose version information
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ docker-compose up
skilldirectory_container is up-to-date
cassandra_container is up-to-date
Attaching to skilldirectory_container, cassandra_container
skilldirectory_container | time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_URL"
skilldirectory_container | time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_PORT"
skilldirectory_container | time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
skilldirectory_container | time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
skilldirectory_container | time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
skilldirectory_container | time="2017-01-09T21:44:06Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
skilldirectory_container | time="2017-01-09T21:44:06Z" level=debug msg="Using Password: cassandra"
skilldirectory_container | time="2017-01-09T21:44:06Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
skilldirectory_container | panic: (*logrus.Entry) (0x736e60,0xc420011310)
skilldirectory_container |
skilldirectory_container | goroutine 1 [running]:
skilldirectory_container | panic(0x736e60, 0xc420011310)
skilldirectory_container | 	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory_container | skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory_container | skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory_container | skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory_container | skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory_container | skilldirectory/router.initializeCassandra()
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory_container | skilldirectory/router.StartRouter(0x0)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
cassandra_container | INFO  21:44:08 Configuration location: file:/etc/cassandra/cassandra.yaml
cassandra_container | INFO  21:44:08 Node configuration:[allocate_tokens_for_keyspace=null; authenticator=PasswordAuthenticator; authorizer=AllowAllAuthorizer; auto_bootstrap=true; auto_snapshot=true; batch_size_fail_threshold_in_kb=50; batch_size_warn_threshold_in_kb=5; batchlog_replay_throttle_in_kb=1024; broadcast_address=172.18.0.3; broadcast_rpc_address=172.18.0.3; buffer_pool_use_heap_if_exhausted=true; cas_contention_timeout_in_ms=1000; client_encryption_options=<REDACTED>; cluster_name=Test Cluster; column_index_size_in_kb=64; commit_failure_policy=stop; commitlog_compression=null; commitlog_directory=/var/lib/cassandra/commitlog; commitlog_max_compression_buffers_in_pool=3; commitlog_periodic_queue_size=-1; commitlog_segment_size_in_mb=32; commitlog_sync=periodic; commitlog_sync_batch_window_in_ms=null; commitlog_sync_period_in_ms=10000; commitlog_total_space_in_mb=null; compaction_large_partition_warning_threshold_mb=100; compaction_throughput_mb_per_sec=16; concurrent_compactors=null; concurrent_counter_writes=32; concurrent_materialized_view_writes=32; concurrent_reads=32; concurrent_replicates=null; concurrent_writes=32; counter_cache_keys_to_save=2147483647; counter_cache_save_period=7200; counter_cache_size_in_mb=null; counter_write_request_timeout_in_ms=5000; cross_node_timeout=false; data_file_directories=[Ljava.lang.String;@29f69090; disk_access_mode=auto; disk_failure_policy=stop; disk_optimization_estimate_percentile=0.95; disk_optimization_page_cross_chance=0.1; disk_optimization_strategy=ssd; dynamic_snitch=true; dynamic_snitch_badness_threshold=0.1; dynamic_snitch_reset_interval_in_ms=600000; dynamic_snitch_update_interval_in_ms=100; enable_scripted_user_defined_functions=false; enable_user_defined_functions=false; enable_user_defined_functions_threads=true; encryption_options=null; endpoint_snitch=SimpleSnitch; file_cache_size_in_mb=512; gc_log_threshold_in_ms=200; gc_warn_threshold_in_ms=1000; hinted_handoff_disabled_datacenters=[]; hinted_handoff_enabled=true; hinted_handoff_throttle_in_kb=1024; hints_compression=null; hints_directory=null; hints_flush_period_in_ms=10000; incremental_backups=false; index_interval=null; index_summary_capacity_in_mb=null; index_summary_resize_interval_in_minutes=60; initial_token=null; inter_dc_stream_throughput_outbound_megabits_per_sec=200; inter_dc_tcp_nodelay=false; internode_authenticator=null; internode_compression=all; internode_recv_buff_size_in_bytes=null; internode_send_buff_size_in_bytes=null; key_cache_keys_to_save=2147483647; key_cache_save_period=14400; key_cache_size_in_mb=null; listen_address=172.18.0.3; listen_interface=null; listen_interface_prefer_ipv6=false; listen_on_broadcast_address=false; max_hint_window_in_ms=10800000; max_hints_delivery_threads=2; max_hints_file_size_in_mb=128; max_mutation_size_in_kb=null; max_streaming_retries=3; max_value_size_in_mb=256; memtable_allocation_type=heap_buffers; memtable_cleanup_threshold=null; memtable_flush_writers=null; memtable_heap_space_in_mb=null; memtable_offheap_space_in_mb=null; min_free_space_per_drive_in_mb=50; native_transport_max_concurrent_connections=-1; native_transport_max_concurrent_connections_per_ip=-1; native_transport_max_frame_size_in_mb=256; native_transport_max_threads=128; native_transport_port=9042; native_transport_port_ssl=null; num_tokens=256; otc_coalescing_strategy=TIMEHORIZON; otc_coalescing_window_us=200; partitioner=org.apache.cassandra.dht.Murmur3Partitioner; permissions_cache_max_entries=1000; permissions_update_interval_in_ms=-1; permissions_validity_in_ms=2000; phi_convict_threshold=8.0; range_request_timeout_in_ms=10000; read_request_timeout_in_ms=5000; request_scheduler=org.apache.cassandra.scheduler.NoScheduler; request_scheduler_id=null; request_scheduler_options=null; request_timeout_in_ms=10000; role_manager=CassandraRoleManager; roles_cache_max_entries=1000; roles_update_interval_in_ms=-1; roles_validity_in_ms=2000; row_cache_class_name=org.apache.cassandra.cache.OHCProvider; row_cache_keys_to_save=2147483647; row_cache_save_period=0; row_cache_size_in_mb=0; rpc_address=0.0.0.0; rpc_interface=null; rpc_interface_prefer_ipv6=false; rpc_keepalive=true; rpc_listen_backlog=50; rpc_max_threads=2147483647; rpc_min_threads=16; rpc_port=9160; rpc_recv_buff_size_in_bytes=null; rpc_send_buff_size_in_bytes=null; rpc_server_type=sync; saved_caches_directory=/var/lib/cassandra/saved_caches; seed_provider=org.apache.cassandra.locator.SimpleSeedProvider{seeds=172.18.0.3}; server_encryption_options=<REDACTED>; snapshot_before_compaction=false; ssl_storage_port=7001; sstable_preemptive_open_interval_in_mb=50; start_native_transport=true; start_rpc=false; storage_port=7000; stream_throughput_outbound_megabits_per_sec=200; streaming_socket_timeout_in_ms=86400000; thrift_framed_transport_size_in_mb=15; thrift_max_message_length_in_mb=16; tombstone_failure_threshold=100000; tombstone_warn_threshold=1000; tracetype_query_ttl=86400; tracetype_repair_ttl=604800; trickle_fsync=false; trickle_fsync_interval_in_kb=10240; truncate_request_timeout_in_ms=60000; unlogged_batch_across_partitions_warn_threshold=10; user_defined_function_fail_timeout=1500; user_defined_function_warn_timeout=500; user_function_timeout_policy=die; windows_timer_interval=1; write_request_timeout_in_ms=2000]
cassandra_container | INFO  21:44:08 DiskAccessMode 'auto' determined to be mmap, indexAccessMode is mmap
cassandra_container | INFO  21:44:08 Global memtable on-heap threshold is enabled at 122MB
cassandra_container | INFO  21:44:08 Global memtable off-heap threshold is enabled at 122MB
cassandra_container | WARN  21:44:08 Small commitlog volume detected at /var/lib/cassandra/commitlog; setting commitlog_total_space_in_mb to 1983.  You can override this in cassandra.yaml
cassandra_container | WARN  21:44:08 Only 6135 MB free across all data volumes. Consider adding more capacity to your cluster or removing obsolete snapshots
cassandra_container | INFO  21:44:09 Hostname: 500ceb29255a
cassandra_container | INFO  21:44:09 JVM vendor/version: OpenJDK 64-Bit Server VM/1.8.0_111
cassandra_container | INFO  21:44:09 Heap size: 511705088/511705088
cassandra_container | INFO  21:44:09 Code Cache Non-heap memory: init = 2555904(2496K) used = 3795200(3706K) committed = 3866624(3776K) max = 251658240(245760K)
cassandra_container | INFO  21:44:09 Metaspace Non-heap memory: init = 0(0K) used = 16097792(15720K) committed = 16515072(16128K) max = -1(-1K)
cassandra_container | INFO  21:44:09 Compressed Class Space Non-heap memory: init = 0(0K) used = 1955328(1909K) committed = 2097152(2048K) max = 1073741824(1048576K)
cassandra_container | INFO  21:44:09 Par Eden Space Heap memory: init = 83886080(81920K) used = 72255032(70561K) committed = 83886080(81920K) max = 83886080(81920K)
cassandra_container | INFO  21:44:09 Par Survivor Space Heap memory: init = 10485760(10240K) used = 0(0K) committed = 10485760(10240K) max = 10485760(10240K)
cassandra_container | INFO  21:44:09 CMS Old Gen Heap memory: init = 417333248(407552K) used = 0(0K) committed = 417333248(407552K) max = 417333248(407552K)
cassandra_container | INFO  21:44:09 Classpath: /etc/cassandra:/usr/share/cassandra/lib/ST4-4.0.8.jar:/usr/share/cassandra/lib/airline-0.6.jar:/usr/share/cassandra/lib/antlr-runtime-3.5.2.jar:/usr/share/cassandra/lib/asm-5.0.4.jar:/usr/share/cassandra/lib/cassandra-driver-core-3.0.1-shaded.jar:/usr/share/cassandra/lib/commons-cli-1.1.jar:/usr/share/cassandra/lib/commons-codec-1.2.jar:/usr/share/cassandra/lib/commons-lang3-3.1.jar:/usr/share/cassandra/lib/commons-math3-3.2.jar:/usr/share/cassandra/lib/compress-lzf-0.8.4.jar:/usr/share/cassandra/lib/concurrentlinkedhashmap-lru-1.4.jar:/usr/share/cassandra/lib/disruptor-3.0.1.jar:/usr/share/cassandra/lib/ecj-4.4.2.jar:/usr/share/cassandra/lib/guava-18.0.jar:/usr/share/cassandra/lib/high-scale-lib-1.0.6.jar:/usr/share/cassandra/lib/jackson-core-asl-1.9.2.jar:/usr/share/cassandra/lib/jackson-mapper-asl-1.9.2.jar:/usr/share/cassandra/lib/jamm-0.3.0.jar:/usr/share/cassandra/lib/javax.inject.jar:/usr/share/cassandra/lib/jbcrypt-0.3m.jar:/usr/share/cassandra/lib/jcl-over-slf4j-1.7.7.jar:/usr/share/cassandra/lib/jna-4.0.0.jar:/usr/share/cassandra/lib/joda-time-2.4.jar:/usr/share/cassandra/lib/json-simple-1.1.jar:/usr/share/cassandra/lib/libthrift-0.9.2.jar:/usr/share/cassandra/lib/log4j-over-slf4j-1.7.7.jar:/usr/share/cassandra/lib/logback-classic-1.1.3.jar:/usr/share/cassandra/lib/logback-core-1.1.3.jar:/usr/share/cassandra/lib/lz4-1.3.0.jar:/usr/share/cassandra/lib/metrics-core-3.1.0.jar:/usr/share/cassandra/lib/metrics-jvm-3.1.0.jar:/usr/share/cassandra/lib/metrics-logback-3.1.0.jar:/usr/share/cassandra/lib/netty-all-4.0.23.Final.jar:/usr/share/cassandra/lib/ohc-core-0.4.3.jar:/usr/share/cassandra/lib/ohc-core-j8-0.4.3.jar:/usr/share/cassandra/lib/reporter-config-base-3.0.0.jar:/usr/share/cassandra/lib/reporter-config3-3.0.0.jar:/usr/share/cassandra/lib/sigar-1.6.4.jar:/usr/share/cassandra/lib/slf4j-api-1.7.7.jar:/usr/share/cassandra/lib/snakeyaml-1.11.jar:/usr/share/cassandra/lib/snappy-java-1.1.1.7.jar:/usr/share/cassandra/lib/stream-2.5.2.jar:/usr/share/cassandra/lib/thrift-server-0.3.7.jar:/usr/share/cassandra/apache-cassandra-3.0.10.jar:/usr/share/cassandra/apache-cassandra-thrift-3.0.10.jar:/usr/share/cassandra/apache-cassandra.jar:/usr/share/cassandra/stress.jar::/usr/share/cassandra/lib/jamm-0.3.0.jar
cassandra_container | INFO  21:44:09 JVM Arguments: [-Xloggc:/var/log/cassandra/gc.log, -XX:+UseParNewGC, -XX:+UseConcMarkSweepGC, -XX:+CMSParallelRemarkEnabled, -XX:SurvivorRatio=8, -XX:MaxTenuringThreshold=1, -XX:CMSInitiatingOccupancyFraction=75, -XX:+UseCMSInitiatingOccupancyOnly, -XX:CMSWaitDuration=10000, -XX:+CMSParallelInitialMarkEnabled, -XX:+CMSEdenChunksRecordAlways, -XX:+CMSClassUnloadingEnabled, -XX:+PrintGCDetails, -XX:+PrintGCDateStamps, -XX:+PrintHeapAtGC, -XX:+PrintTenuringDistribution, -XX:+PrintGCApplicationStoppedTime, -XX:+PrintPromotionFailure, -XX:+UseGCLogFileRotation, -XX:NumberOfGCLogFiles=10, -XX:GCLogFileSize=10M, -Xms497M, -Xmx497M, -Xmn100M, -ea, -Xss256k, -XX:+AlwaysPreTouch, -XX:-UseBiasedLocking, -XX:StringTableSize=1000003, -XX:+UseTLAB, -XX:+ResizeTLAB, -XX:+PerfDisableSharedMem, -XX:CompileCommandFile=/etc/cassandra/hotspot_compiler, -javaagent:/usr/share/cassandra/lib/jamm-0.3.0.jar, -XX:+UseThreadPriorities, -XX:ThreadPriorityPolicy=42, -XX:+HeapDumpOnOutOfMemoryError, -Djava.net.preferIPv4Stack=true, -Dcassandra.jmx.local.port=7199, -XX:+DisableExplicitGC, -Djava.library.path=/usr/share/cassandra/lib/sigar-bin, -Dcassandra.libjemalloc=/usr/lib/x86_64-linux-gnu/libjemalloc.so.1, -Dlogback.configurationFile=logback.xml, -Dcassandra.logdir=/var/log/cassandra, -Dcassandra.storagedir=/var/lib/cassandra, -Dcassandra-foreground=yes]
cassandra_container | WARN  21:44:09 Unable to lock JVM memory (ENOMEM). This can result in part of the JVM being swapped out, especially with mmapped I/O enabled. Increase RLIMIT_MEMLOCK or run Cassandra as root.
cassandra_container | INFO  21:44:09 jemalloc seems to be preloaded from /usr/lib/x86_64-linux-gnu/libjemalloc.so.1
cassandra_container | WARN  21:44:09 JMX is not enabled to receive remote connections. Please see cassandra-env.sh for more info.
cassandra_container | WARN  21:44:09 OpenJDK is not recommended. Please upgrade to the newest Oracle Java release
cassandra_container | INFO  21:44:09 Initializing SIGAR library
cassandra_container | WARN  21:44:09 Cassandra server running in degraded mode. Is swap disabled? : true,  Address space adequate? : true,  nofile limit adequate? : false, nproc limit adequate? : false
cassandra_container | WARN  21:44:09 Directory /var/lib/cassandra/data doesn't exist
cassandra_container | WARN  21:44:09 Directory /var/lib/cassandra/commitlog doesn't exist
cassandra_container | WARN  21:44:09 Directory /var/lib/cassandra/saved_caches doesn't exist
cassandra_container | WARN  21:44:09 Directory /var/lib/cassandra/hints doesn't exist
cassandra_container | INFO  21:44:10 Initializing system.IndexInfo
cassandra_container | INFO  21:44:11 Initializing system.batches
cassandra_container | INFO  21:44:11 Initializing system.paxos
cassandra_container | INFO  21:44:11 Initializing system.local
cassandra_container | INFO  21:44:11 Initializing system.peers
cassandra_container | INFO  21:44:11 Initializing system.peer_events
cassandra_container | INFO  21:44:11 Initializing system.range_xfers
cassandra_container | INFO  21:44:11 Initializing system.compaction_history
cassandra_container | INFO  21:44:11 Initializing system.sstable_activity
cassandra_container | INFO  21:44:11 Initializing system.size_estimates
skilldirectory_container | main.main()
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
skilldirectory_container | time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_URL"
skilldirectory_container | time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_PORT"
skilldirectory_container | time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
skilldirectory_container | time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
skilldirectory_container | time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
skilldirectory_container | time="2017-01-09T21:44:06Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
skilldirectory_container | time="2017-01-09T21:44:06Z" level=debug msg="Using Password: cassandra"
skilldirectory_container | time="2017-01-09T21:44:06Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
skilldirectory_container | panic: (*logrus.Entry) (0x736e60,0xc420011310)
skilldirectory_container |
skilldirectory_container | goroutine 1 [running]:
skilldirectory_container | panic(0x736e60, 0xc420011310)
skilldirectory_container | 	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory_container | skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory_container | skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory_container | skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory_container | skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory_container | skilldirectory/router.initializeCassandra()
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory_container | skilldirectory/router.StartRouter(0x0)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
skilldirectory_container | main.main()
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
skilldirectory_container | time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_URL"
skilldirectory_container | time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_PORT"
skilldirectory_container | time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
skilldirectory_container | time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
skilldirectory_container | time="2017-01-09T21:44:06Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
skilldirectory_container | time="2017-01-09T21:44:06Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
skilldirectory_container | time="2017-01-09T21:44:06Z" level=debug msg="Using Password: cassandra"
skilldirectory_container | time="2017-01-09T21:44:06Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
skilldirectory_container | panic: (*logrus.Entry) (0x736e60,0xc420011310)
skilldirectory_container |
skilldirectory_container | goroutine 1 [running]:
skilldirectory_container | panic(0x736e60, 0xc420011310)
skilldirectory_container | 	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory_container | skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory_container | skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory_container | skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory_container | skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory_container | skilldirectory/router.initializeCassandra()
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory_container | skilldirectory/router.StartRouter(0x0)
cassandra_container | INFO  21:44:11 Initializing system.available_ranges
cassandra_container | INFO  21:44:11 Initializing system.views_builds_in_progress
cassandra_container | INFO  21:44:11 Initializing system.built_views
cassandra_container | INFO  21:44:11 Initializing system.hints
cassandra_container | INFO  21:44:11 Initializing system.batchlog
cassandra_container | INFO  21:44:11 Initializing system.schema_keyspaces
cassandra_container | INFO  21:44:11 Initializing system.schema_columnfamilies
cassandra_container | INFO  21:44:11 Initializing system.schema_columns
cassandra_container | INFO  21:44:11 Initializing system.schema_triggers
cassandra_container | INFO  21:44:11 Initializing system.schema_usertypes
cassandra_container | INFO  21:44:11 Initializing system.schema_functions
cassandra_container | INFO  21:44:11 Initializing system.schema_aggregates
cassandra_container | INFO  21:44:12 Initializing key cache with capacity of 24 MBs.
cassandra_container | INFO  21:44:12 Initializing row cache with capacity of 0 MBs
cassandra_container | INFO  21:44:12 Initializing counter cache with capacity of 12 MBs
cassandra_container | INFO  21:44:12 Scheduling counter cache save to every 7200 seconds (going to save all keys).
cassandra_container | INFO  21:44:12 Global buffer pool is enabled, when pool is exahusted (max is 512 mb) it will allocate on heap
cassandra_container | INFO  21:44:12 Populating token metadata from system tables
cassandra_container | INFO  21:44:12 Token metadata:
cassandra_container | INFO  21:44:12 Initializing system_schema.keyspaces
cassandra_container | INFO  21:44:12 Initializing system_schema.tables
cassandra_container | INFO  21:44:12 Initializing system_schema.columns
cassandra_container | INFO  21:44:12 Initializing system_schema.triggers
cassandra_container | INFO  21:44:12 Initializing system_schema.dropped_columns
cassandra_container | INFO  21:44:12 Initializing system_schema.views
cassandra_container | INFO  21:44:12 Initializing system_schema.types
cassandra_container | INFO  21:44:12 Initializing system_schema.functions
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
skilldirectory_container | main.main()
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
skilldirectory_container | time="2017-01-09T21:44:07Z" level=info msg="Getting Env: CASSANDRA_URL"
skilldirectory_container | time="2017-01-09T21:44:07Z" level=info msg="Getting Env: CASSANDRA_PORT"
skilldirectory_container | time="2017-01-09T21:44:07Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
skilldirectory_container | time="2017-01-09T21:44:07Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
skilldirectory_container | time="2017-01-09T21:44:07Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
skilldirectory_container | time="2017-01-09T21:44:07Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
skilldirectory_container | time="2017-01-09T21:44:07Z" level=debug msg="Using Password: cassandra"
skilldirectory_container | time="2017-01-09T21:44:07Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
skilldirectory_container | panic: (*logrus.Entry) (0x736e60,0xc420011310)
skilldirectory_container |
skilldirectory_container | goroutine 1 [running]:
cassandra_container | INFO  21:44:12 Initializing system_schema.aggregates
cassandra_container | INFO  21:44:12 Initializing system_schema.indexes
cassandra_container | INFO  21:44:12 Completed loading (3 ms; 5 keys) KeyCache cache
cassandra_container | INFO  21:44:12 No commitlog files found; skipping replay
cassandra_container | INFO  21:44:12 Populating token metadata from system tables
cassandra_container | INFO  21:44:12 Token metadata:
cassandra_container | INFO  21:44:13 Cassandra version: 3.0.10
cassandra_container | INFO  21:44:13 Thrift API version: 20.1.0
cassandra_container | INFO  21:44:13 CQL supported versions: 3.4.0 (default: 3.4.0)
cassandra_container | INFO  21:44:13 Initializing index summary manager with a memory pool size of 24 MB and a resize interval of 60 minutes
cassandra_container | INFO  21:44:13 Loading persisted ring state
cassandra_container | WARN  21:44:13 No host ID found, created 0e766dce-02de-40ea-bb7a-6a002391b606 (Note: This should happen exactly once per node).
cassandra_container | INFO  21:44:13 Starting up server gossip
cassandra_container | INFO  21:44:13 Starting Messaging Service on /172.18.0.3:7000 (eth0)
skilldirectory_container | panic(0x736e60, 0xc420011310)
skilldirectory_container | 	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory_container | skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory_container | skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory_container | skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory_container | skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory_container | skilldirectory/router.initializeCassandra()
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory_container | skilldirectory/router.StartRouter(0x0)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
cassandra_container | INFO  21:44:13 This node will not auto bootstrap because it is configured to be a seed node.
cassandra_container | INFO  21:44:13 Generated random tokens. tokens are [8326423056883187983, -3276623050197088240, -1410063418133003827, -4846619958143403034, 8729236961979203864, 3016530975678519407, -850080648072613085, 5008534870302674919, -5317948840609666483, 5893696663117365024, 7791843361411073036, 839603843745665556, 3432160310771559318, -8933038071993600799, -8966466897524311395, -4868934569557781680, -1995865685201510708, 5824389325363085344, -8997995189343801271, 1513294094349646724, -2692693847156560681, -362475665327844671, -397559029399252697, -4036865505167258218, -5737918934938476452, -1739335757449181509, -4608615312712442947, 6915217442234764429, 6862711510337703292, -8203294148560648084, 5423418373468390850, -3216177668659676930, -5494325677360690557, 5956191963645657777, -2798005062566732334, 851827313669256882, -5327958867431492, -1630362675738639065, -3094071220344247757, 1941404224849081850, -1592422895926632851, 5372009012229403480, -4423877115924477257, -7691081915596523835, -596604336602442964, 6222805142737126667, 278887720925605513, -1488122624312331541, 6166209468173707820, -6130798602483659262, -2825445908646205341, -9167322201217260693, 6200706158096743639, -7762626480487337266, -9083050926580749135, 2487345962996329675, -3727744964838832092, 8343636635591712172, -4010786163458382285, -7479582139547187669, 1059281925041439925, -1158364078984033754, 8980213835999319022, 18120575973005647, -3832397180565479539, -8020952559414443713, -5145203769518606267, -7262386296350519509, 1586617221714355030, -310764862512071287, 5640365499355516628, -6553314707070595020, -8427086232191983525, -6970936801261968437, -6720067303651607166, -7803476504805842615, -3669372522223835125, -3678634188808753075, 8708710795523116737, 6834360720425624915, -8487837076791917582, 8765761318522234415, -7200690997122636778, 8363654485979743000, -1574588762444024225, -6455158707360039762, 7745986060285377216, 6659133593290375097, -1345818193073165523, 6226285234031980833, 1135881120228208324, 5465251258144440226, -778522415059606305, -1145380679280142329, 833060264983318546, 4452349866244005060, -1408733079195725481, -4331930227107526049, -3544677045035024812, 1095088844505646173, 3955509606519887638, 43481736791741429, -9148521452632274860, -4448754778010333123, 5011895669890961553, 1177903447644070624, 47731289679962425, 8694532646364154767, 3982172462674084191, 8058260805414575804, 5846968322988904446, 4988029786139648165, -2593389118044185577, -7075585650547079114, 9191413917621756487, 5030491132710402772, -7428035317525262621, 5781408782401497123, 2762621388071611356, -5602619717168806577, 8372906576961653689, 3912860871924109325, -4595747918895514706, -5639088200141691113, 8282625333415931450, 3582360167277630671, -4110086087996938536, 4596305640384092510, -7222330512690614030, 9060890685879258325, -2609179422100489316, 1182917008973305139, 5662123224501757027, -5252817468768067495, -1097325129953494697, 2699410102975714723, -6952286804750639804, -2009893333375429605, -4016684225032711251, -435491501199598496, -9014178972970833332, 7361902147940196075, 168731533953218704, -2450869010500728468, -4932864883198275360, 7871225818871028415, 7054400715163601986, -550638069123057423, -7544029273929123462, 7174970215169934563, -1836897182125747099, -1519655811107492148, 5567929721432902304, 2059344066332225846, 784763001160711950, 8797262803456342795, -1397641166214239937, -6052493483262275392, -9078824847556780878, -5601130453965210573, 7865886125196049956, -651541996983853495, -4499431514362788512, 4784242609614522700, 834762507744141661, 2510854278181064332, 2191657187858787954, -6827144180289168398, 6405560494403343579, 9105959695284998515, -4497826784431071705, -8728404300724644781, 8924287087679984025, 5735458651917103867, -5520211297996397827, 7786331970111787837, 5112920307501786053, 8201813780544919019, -1959630463979424624, -4169020307081655707, -7602576518445393510, -4422507772390631652, 176557489736500518, -1957359425095040193, -630743702303240115, 5203291240108069128, 5720086934735144953, 7355338038292006611, -6582244460156894252, 3544869649376606801, 5371580184939902348, -2539643523845148398, -7369177831103529095, 3192633027351775379, 5520362623672063541, -6261029826850882432, -1022546577958694521, -694995895947831652, -3488291234804514864, 4653958670946890481, -6790970222501876387, -3638770359412194388, -2897008786590389371, 4203025691454502079, -1290352883857390147, -1565446137577480081, 8948284554559149913, 4163981836097392880, -1546743009501331539, 5983241415060747995, -6251628557803384282, -3900347554054428973, 2023539486057101462, 5068620125989371923, 3615283259296362380, -1516821162127534603, -5864467318305850801, -5470128962169511091, -5058611960151948854, -6268156806723777292, 8049052607682577394, -8739391289352571891, 6740409600051444036, -8453711353306201810, -7247406735105817062, 1630206959205341814, 6976224800635591985, -1804607473386229871, 4753943069173060151, -8564756906486151882, 4105964448142855774, 9202663338401049441, -1440415997962540500, 32503524172179009, -2683459781159638938, 4458698524604011807, 1805177073863313529, -1332600850480006882, -4783367774739147118, 4712165524493870967, -8366391396880864134, -6960792411026201334, -6902710784813816045, -7398303182319713856, -7250198865267942659, -7941990254614143491, 7010351573418869554, -8300529883100078236, -4788958648837243108, 4173236796495687798, -341340024173042638, -3469970187148049526, 3341259813854864036, -2626715210961869158, 1919066844673228418, -8404509636634567511]
cassandra_container | INFO  21:44:13 Create new Keyspace: KeyspaceMetadata{name=system_traces, params=KeyspaceParams{durable_writes=true, replication=ReplicationParams{class=org.apache.cassandra.locator.SimpleStrategy, replication_factor=2}}, tables=[org.apache.cassandra.config.CFMetaData@2791a91c[cfId=c5e99f16-8677-3914-b17e-960613512345,ksName=system_traces,cfName=sessions,flags=[COMPOUND],params=TableParams{comment=tracing sessions, read_repair_chance=0.0, dclocal_read_repair_chance=0.0, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=0, default_time_to_live=0, memtable_flush_period_in_ms=3600000, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(),partitionColumns=[[] | [client command coordinator duration request started_at parameters]],partitionKeyColumns=[ColumnDefinition{name=session_id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}],clusteringColumns=[],keyValidator=org.apache.cassandra.db.marshal.UUIDType,columnMetadata=[ColumnDefinition{name=client, type=org.apache.cassandra.db.marshal.InetAddressType, kind=REGULAR, position=-1}, ColumnDefinition{name=command, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=session_id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=coordinator, type=org.apache.cassandra.db.marshal.InetAddressType, kind=REGULAR, position=-1}, ColumnDefinition{name=request, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=started_at, type=org.apache.cassandra.db.marshal.TimestampType, kind=REGULAR, position=-1}, ColumnDefinition{name=duration, type=org.apache.cassandra.db.marshal.Int32Type, kind=REGULAR, position=-1}, ColumnDefinition{name=parameters, type=org.apache.cassandra.db.marshal.MapType(org.apache.cassandra.db.marshal.UTF8Type,org.apache.cassandra.db.marshal.UTF8Type), kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]], org.apache.cassandra.config.CFMetaData@5fb8f594[cfId=8826e8e9-e16a-3728-8753-3bc1fc713c25,ksName=system_traces,cfName=events,flags=[COMPOUND],params=TableParams{comment=tracing events, read_repair_chance=0.0, dclocal_read_repair_chance=0.0, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=0, default_time_to_live=0, memtable_flush_period_in_ms=3600000, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.TimeUUIDType),partitionColumns=[[] | [activity source source_elapsed thread]],partitionKeyColumns=[ColumnDefinition{name=session_id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=event_id, type=org.apache.cassandra.db.marshal.TimeUUIDType, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UUIDType,columnMetadata=[ColumnDefinition{name=activity, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=session_id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=thread, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=event_id, type=org.apache.cassandra.db.marshal.TimeUUIDType, kind=CLUSTERING, position=0}, ColumnDefinition{name=source, type=org.apache.cassandra.db.marshal.InetAddressType, kind=REGULAR, position=-1}, ColumnDefinition{name=source_elapsed, type=org.apache.cassandra.db.marshal.Int32Type, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]]], views=[], functions=[], types=[]}
cassandra_container | INFO  21:44:14 Initializing system_traces.events
cassandra_container | INFO  21:44:14 Initializing system_traces.sessions
cassandra_container | INFO  21:44:14 Create new Keyspace: KeyspaceMetadata{name=system_distributed, params=KeyspaceParams{durable_writes=true, replication=ReplicationParams{class=org.apache.cassandra.locator.SimpleStrategy, replication_factor=3}}, tables=[org.apache.cassandra.config.CFMetaData@41adeb6d[cfId=759fffad-624b-3181-80ee-fa9a52d1f627,ksName=system_distributed,cfName=repair_history,flags=[COMPOUND],params=TableParams{comment=Repair history, read_repair_chance=0.0, dclocal_read_repair_chance=0.0, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=0, default_time_to_live=0, memtable_flush_period_in_ms=3600000, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.TimeUUIDType),partitionColumns=[[] | [coordinator exception_message exception_stacktrace finished_at parent_id range_begin range_end started_at status participants]],partitionKeyColumns=[ColumnDefinition{name=keyspace_name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=columnfamily_name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=1}],clusteringColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.TimeUUIDType, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.CompositeType(org.apache.cassandra.db.marshal.UTF8Type,org.apache.cassandra.db.marshal.UTF8Type),columnMetadata=[ColumnDefinition{name=status, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.TimeUUIDType, kind=CLUSTERING, position=0}, ColumnDefinition{name=coordinator, type=org.apache.cassandra.db.marshal.InetAddressType, kind=REGULAR, position=-1}, ColumnDefinition{name=finished_at, type=org.apache.cassandra.db.marshal.TimestampType, kind=REGULAR, position=-1}, ColumnDefinition{name=participants, type=org.apache.cassandra.db.marshal.SetType(org.apache.cassandra.db.marshal.InetAddressType), kind=REGULAR, position=-1}, ColumnDefinition{name=exception_stacktrace, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=parent_id, type=org.apache.cassandra.db.marshal.TimeUUIDType, kind=REGULAR, position=-1}, ColumnDefinition{name=range_end, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=range_begin, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=exception_message, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=keyspace_name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=started_at, type=org.apache.cassandra.db.marshal.TimestampType, kind=REGULAR, position=-1}, ColumnDefinition{name=columnfamily_name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=1}],droppedColumns={},triggers=[],indexes=[]], org.apache.cassandra.config.CFMetaData@4393c4b[cfId=deabd734-b99d-3b9c-92e5-fd92eb5abf14,ksName=system_distributed,cfName=parent_repair_history,flags=[COMPOUND],params=TableParams{comment=Repair history, read_repair_chance=0.0, dclocal_read_repair_chance=0.0, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=0, default_time_to_live=0, memtable_flush_period_in_ms=3600000, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(),partitionColumns=[[] | [exception_message exception_stacktrace finished_at keyspace_name started_at columnfamily_names requested_ranges successful_ranges]],partitionKeyColumns=[ColumnDefinition{name=parent_id, type=org.apache.cassandra.db.marshal.TimeUUIDType, kind=PARTITION_KEY, position=0}],clusteringColumns=[],keyValidator=org.apache.cassandra.db.marshal.TimeUUIDType,columnMetadata=[ColumnDefinition{name=requested_ranges, type=org.apache.cassandra.db.marshal.SetType(org.apache.cassandra.db.marshal.UTF8Type), kind=REGULAR, position=-1}, ColumnDefinition{name=exception_message, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=keyspace_name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=successful_ranges, type=org.apache.cassandra.db.marshal.SetType(org.apache.cassandra.db.marshal.UTF8Type), kind=REGULAR, position=-1}, ColumnDefinition{name=started_at, type=org.apache.cassandra.db.marshal.TimestampType, kind=REGULAR, position=-1}, ColumnDefinition{name=finished_at, type=org.apache.cassandra.db.marshal.TimestampType, kind=REGULAR, position=-1}, ColumnDefinition{name=exception_stacktrace, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=parent_id, type=org.apache.cassandra.db.marshal.TimeUUIDType, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=columnfamily_names, type=org.apache.cassandra.db.marshal.SetType(org.apache.cassandra.db.marshal.UTF8Type), kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]]], views=[], functions=[], types=[]}
skilldirectory_container | main.main()
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
skilldirectory_container | time="2017-01-09T21:44:08Z" level=info msg="Getting Env: CASSANDRA_URL"
skilldirectory_container | time="2017-01-09T21:44:08Z" level=info msg="Getting Env: CASSANDRA_PORT"
skilldirectory_container | time="2017-01-09T21:44:08Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
skilldirectory_container | time="2017-01-09T21:44:08Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
skilldirectory_container | time="2017-01-09T21:44:08Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
cassandra_container | INFO  21:44:14 Initializing system_distributed.parent_repair_history
cassandra_container | INFO  21:44:14 Initializing system_distributed.repair_history
cassandra_container | INFO  21:44:14 Create new Keyspace: KeyspaceMetadata{name=system_auth, params=KeyspaceParams{durable_writes=true, replication=ReplicationParams{class=org.apache.cassandra.locator.SimpleStrategy, replication_factor=1}}, tables=[org.apache.cassandra.config.CFMetaData@37cbc663[cfId=5bc52802-de25-35ed-aeab-188eecebb090,ksName=system_auth,cfName=roles,flags=[COMPOUND],params=TableParams{comment=role definitions, read_repair_chance=0.0, dclocal_read_repair_chance=0.0, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=7776000, default_time_to_live=0, memtable_flush_period_in_ms=3600000, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(),partitionColumns=[[] | [can_login is_superuser salted_hash member_of]],partitionKeyColumns=[ColumnDefinition{name=role, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}],clusteringColumns=[],keyValidator=org.apache.cassandra.db.marshal.UTF8Type,columnMetadata=[ColumnDefinition{name=role, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=salted_hash, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=member_of, type=org.apache.cassandra.db.marshal.SetType(org.apache.cassandra.db.marshal.UTF8Type), kind=REGULAR, position=-1}, ColumnDefinition{name=can_login, type=org.apache.cassandra.db.marshal.BooleanType, kind=REGULAR, position=-1}, ColumnDefinition{name=is_superuser, type=org.apache.cassandra.db.marshal.BooleanType, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]], org.apache.cassandra.config.CFMetaData@43b187f1[cfId=0ecdaa87-f8fb-3e60-88d1-74fb36fe5c0d,ksName=system_auth,cfName=role_members,flags=[COMPOUND],params=TableParams{comment=role memberships lookup table, read_repair_chance=0.0, dclocal_read_repair_chance=0.0, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=7776000, default_time_to_live=0, memtable_flush_period_in_ms=3600000, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UTF8Type),partitionColumns=[[] | []],partitionKeyColumns=[ColumnDefinition{name=role, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=member, type=org.apache.cassandra.db.marshal.UTF8Type, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UTF8Type,columnMetadata=[ColumnDefinition{name=role, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=member, type=org.apache.cassandra.db.marshal.UTF8Type, kind=CLUSTERING, position=0}],droppedColumns={},triggers=[],indexes=[]], org.apache.cassandra.config.CFMetaData@37ee43e5[cfId=3afbe79f-2194-31a7-add7-f5ab90d8ec9c,ksName=system_auth,cfName=role_permissions,flags=[COMPOUND],params=TableParams{comment=permissions granted to db roles, read_repair_chance=0.0, dclocal_read_repair_chance=0.0, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=7776000, default_time_to_live=0, memtable_flush_period_in_ms=3600000, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UTF8Type),partitionColumns=[[] | [permissions]],partitionKeyColumns=[ColumnDefinition{name=role, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=resource, type=org.apache.cassandra.db.marshal.UTF8Type, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UTF8Type,columnMetadata=[ColumnDefinition{name=resource, type=org.apache.cassandra.db.marshal.UTF8Type, kind=CLUSTERING, position=0}, ColumnDefinition{name=role, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=permissions, type=org.apache.cassandra.db.marshal.SetType(org.apache.cassandra.db.marshal.UTF8Type), kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]], org.apache.cassandra.config.CFMetaData@c2d5e98[cfId=5f2fbdad-91f1-3946-bd25-d5da3a5c35ec,ksName=system_auth,cfName=resource_role_permissons_index,flags=[COMPOUND],params=TableParams{comment=index of db roles with permissions granted on a resource, read_repair_chance=0.0, dclocal_read_repair_chance=0.0, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=7776000, default_time_to_live=0, memtable_flush_period_in_ms=3600000, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UTF8Type),partitionColumns=[[] | []],partitionKeyColumns=[ColumnDefinition{name=resource, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=role, type=org.apache.cassandra.db.marshal.UTF8Type, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UTF8Type,columnMetadata=[ColumnDefinition{name=resource, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=role, type=org.apache.cassandra.db.marshal.UTF8Type, kind=CLUSTERING, position=0}],droppedColumns={},triggers=[],indexes=[]]], views=[], functions=[], types=[]}
cassandra_container | INFO  21:44:14 Initializing system_auth.resource_role_permissons_index
cassandra_container | INFO  21:44:14 Initializing system_auth.role_members
cassandra_container | INFO  21:44:14 Initializing system_auth.role_permissions
cassandra_container | INFO  21:44:14 Initializing system_auth.roles
cassandra_container | INFO  21:44:14 Waiting for gossip to settle before accepting client requests...
cassandra_container | INFO  21:44:22 No gossip backlog; proceeding
cassandra_container | INFO  21:44:22 Netty using native Epoll event loop
cassandra_container | INFO  21:44:22 Using Netty Version: [netty-buffer=netty-buffer-4.0.23.Final.208198c, netty-codec=netty-codec-4.0.23.Final.208198c, netty-codec-http=netty-codec-http-4.0.23.Final.208198c, netty-codec-socks=netty-codec-socks-4.0.23.Final.208198c, netty-common=netty-common-4.0.23.Final.208198c, netty-handler=netty-handler-4.0.23.Final.208198c, netty-transport=netty-transport-4.0.23.Final.208198c, netty-transport-rxtx=netty-transport-rxtx-4.0.23.Final.208198c, netty-transport-sctp=netty-transport-sctp-4.0.23.Final.208198c, netty-transport-udt=netty-transport-udt-4.0.23.Final.208198c]
cassandra_container | INFO  21:44:22 Starting listening for CQL clients on /0.0.0.0:9042 (unencrypted)...
cassandra_container | INFO  21:44:22 Not starting RPC server as requested. Use JMX (StorageService->startRPCServer()) or nodetool (enablethrift) to start it
skilldirectory_container | time="2017-01-09T21:44:08Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
skilldirectory_container | time="2017-01-09T21:44:08Z" level=debug msg="Using Password: cassandra"
skilldirectory_container | time="2017-01-09T21:44:08Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
skilldirectory_container | panic: (*logrus.Entry) (0x736e60,0xc420011310)
skilldirectory_container |
skilldirectory_container | goroutine 1 [running]:
skilldirectory_container | panic(0x736e60, 0xc420011310)
skilldirectory_container | 	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory_container | skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory_container | skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory_container | skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
cassandra_container | INFO  21:44:24 Created default superuser role 'cassandra'
cassandra_container | INFO  21:44:32 Create new Keyspace: KeyspaceMetadata{name=skill_directory_keyspace, params=KeyspaceParams{durable_writes=true, replication=ReplicationParams{class=org.apache.cassandra.locator.SimpleStrategy, replication_factor=1}}, tables=[], views=[], functions=[], types=[]}
cassandra_container | INFO  21:44:32 Create new table: org.apache.cassandra.config.CFMetaData@40806b22[cfId=ce2e58a0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=skills,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(),partitionColumns=[[] | [name skill_type]],partitionKeyColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}],clusteringColumns=[],keyValidator=org.apache.cassandra.db.marshal.UUIDType,columnMetadata=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=skill_type, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]]
cassandra_container | INFO  21:44:32 Initializing skill_directory_keyspace.skills
cassandra_container | INFO  21:44:32 Create new table: org.apache.cassandra.config.CFMetaData@7aa7ed86[cfId=ce4981c0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=links,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UUIDType),partitionColumns=[[] | [link_type name url]],partitionKeyColumns=[ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UUIDType,columnMetadata=[ColumnDefinition{name=link_type, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}, ColumnDefinition{name=name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=url, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]]
cassandra_container | INFO  21:44:32 Initializing skill_directory_keyspace.links
cassandra_container | INFO  21:44:32 Create new table: org.apache.cassandra.config.CFMetaData@4cf97507[cfId=ce62fd30-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=teammembers,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(),partitionColumns=[[] | [name title]],partitionKeyColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}],clusteringColumns=[],keyValidator=org.apache.cassandra.db.marshal.UUIDType,columnMetadata=[ColumnDefinition{name=title, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]]
cassandra_container | INFO  21:44:32 Initializing skill_directory_keyspace.teammembers
cassandra_container | INFO  21:44:32 Create new table: org.apache.cassandra.config.CFMetaData@484bfe3[cfId=ce7acaf0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=tmskills,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UUIDType),partitionColumns=[[] | [proficiency skill_id wish_list]],partitionKeyColumns=[ColumnDefinition{name=team_member_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UTF8Type,columnMetadata=[ColumnDefinition{name=proficiency, type=org.apache.cassandra.db.marshal.Int32Type, kind=REGULAR, position=-1}, ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}, ColumnDefinition{name=team_member_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=wish_list, type=org.apache.cassandra.db.marshal.BooleanType, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]]
cassandra_container | INFO  21:44:32 Initializing skill_directory_keyspace.tmskills
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory_container | skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory_container | skilldirectory/router.initializeCassandra()
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory_container | skilldirectory/router.StartRouter(0x0)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
skilldirectory_container | main.main()
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
skilldirectory_container | time="2017-01-09T21:44:10Z" level=info msg="Getting Env: CASSANDRA_URL"
skilldirectory_container | time="2017-01-09T21:44:10Z" level=info msg="Getting Env: CASSANDRA_PORT"
skilldirectory_container | time="2017-01-09T21:44:10Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
skilldirectory_container | time="2017-01-09T21:44:10Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
skilldirectory_container | time="2017-01-09T21:44:10Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
skilldirectory_container | time="2017-01-09T21:44:10Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
cassandra_container | INFO  21:44:32 Create new table: org.apache.cassandra.config.CFMetaData@65dc0375[cfId=ce9816f0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=skillreviews,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={min_threshold=4, max_threshold=32}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UUIDType),partitionColumns=[[] | [body positive team_member_id timestamp]],partitionKeyColumns=[ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UTF8Type,columnMetadata=[ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=positive, type=org.apache.cassandra.db.marshal.BooleanType, kind=REGULAR, position=-1}, ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}, ColumnDefinition{name=body, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=timestamp, type=org.apache.cassandra.db.marshal.TimestampType, kind=REGULAR, position=-1}, ColumnDefinition{name=team_member_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]]
cassandra_container | INFO  21:44:33 Initializing skill_directory_keyspace.skillreviews
cassandra_container | INFO  21:44:33 Update table 'skill_directory_keyspace/skills' From org.apache.cassandra.config.CFMetaData@1bb87f5d[cfId=ce2e58a0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=skills,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={max_threshold=32, min_threshold=4}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(),partitionColumns=[[] | [name skill_type]],partitionKeyColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}],clusteringColumns=[],keyValidator=org.apache.cassandra.db.marshal.UUIDType,columnMetadata=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=skill_type, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]] To org.apache.cassandra.config.CFMetaData@2f900ab2[cfId=ce2e58a0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=skills,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={max_threshold=32, min_threshold=4}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(),partitionColumns=[[] | [name skill_type]],partitionKeyColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}],clusteringColumns=[],keyValidator=org.apache.cassandra.db.marshal.UUIDType,columnMetadata=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=skill_type, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[org.apache.cassandra.schema.IndexMetadata@18e041d[id=c7881146-dc27-3a08-a665-4ee42902b25d,name=skills_skill_type_idx,kind=COMPOSITES,options={target=skill_type}]]]
cassandra_container | INFO  21:44:33 Initializing skill_directory_keyspace.skills.skills_skill_type_idx
cassandra_container | INFO  21:44:33 Update table 'skill_directory_keyspace/tmskills' From org.apache.cassandra.config.CFMetaData@3a76977c[cfId=ce7acaf0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=tmskills,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={max_threshold=32, min_threshold=4}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UUIDType),partitionColumns=[[] | [proficiency skill_id wish_list]],partitionKeyColumns=[ColumnDefinition{name=team_member_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UTF8Type,columnMetadata=[ColumnDefinition{name=proficiency, type=org.apache.cassandra.db.marshal.Int32Type, kind=REGULAR, position=-1}, ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}, ColumnDefinition{name=team_member_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=wish_list, type=org.apache.cassandra.db.marshal.BooleanType, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]] To org.apache.cassandra.config.CFMetaData@33a3c6c9[cfId=ce7acaf0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=tmskills,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={max_threshold=32, min_threshold=4}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UUIDType),partitionColumns=[[] | [proficiency skill_id wish_list]],partitionKeyColumns=[ColumnDefinition{name=team_member_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UTF8Type,columnMetadata=[ColumnDefinition{name=proficiency, type=org.apache.cassandra.db.marshal.Int32Type, kind=REGULAR, position=-1}, ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}, ColumnDefinition{name=team_member_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=wish_list, type=org.apache.cassandra.db.marshal.BooleanType, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[org.apache.cassandra.schema.IndexMetadata@1be39676[id=bf647b96-1ed2-3bf2-b52f-6c1b9c71fd36,name=tmskills_id_idx,kind=COMPOSITES,options={target=id}]]]
cassandra_container | INFO  21:44:33 Initializing skill_directory_keyspace.tmskills.tmskills_id_idx
cassandra_container | INFO  21:44:33 Update table 'skill_directory_keyspace/links' From org.apache.cassandra.config.CFMetaData@3e8836fa[cfId=ce4981c0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=links,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={max_threshold=32, min_threshold=4}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UUIDType),partitionColumns=[[] | [link_type name url]],partitionKeyColumns=[ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UUIDType,columnMetadata=[ColumnDefinition{name=link_type, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}, ColumnDefinition{name=name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=url, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]] To org.apache.cassandra.config.CFMetaData@778e6011[cfId=ce4981c0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=links,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={max_threshold=32, min_threshold=4}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UUIDType),partitionColumns=[[] | [link_type name url]],partitionKeyColumns=[ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UUIDType,columnMetadata=[ColumnDefinition{name=link_type, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UUIDType, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}, ColumnDefinition{name=name, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=url, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[org.apache.cassandra.schema.IndexMetadata@16101a33[id=de71a04c-aeae-3a42-a065-65c6091aa10a,name=links_id_idx,kind=COMPOSITES,options={target=id}]]]
skilldirectory_container | time="2017-01-09T21:44:10Z" level=debug msg="Using Password: cassandra"
skilldirectory_container | time="2017-01-09T21:44:10Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
skilldirectory_container | panic: (*logrus.Entry) (0x736e60,0xc420011310)
skilldirectory_container |
skilldirectory_container | goroutine 1 [running]:
skilldirectory_container | panic(0x736e60, 0xc420011310)
cassandra_container | INFO  21:44:34 Initializing skill_directory_keyspace.links.links_id_idx
cassandra_container | INFO  21:44:34 Update table 'skill_directory_keyspace/skillreviews' From org.apache.cassandra.config.CFMetaData@67c6b259[cfId=ce9816f0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=skillreviews,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={max_threshold=32, min_threshold=4}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UUIDType),partitionColumns=[[] | [body positive team_member_id timestamp]],partitionKeyColumns=[ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UTF8Type,columnMetadata=[ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=positive, type=org.apache.cassandra.db.marshal.BooleanType, kind=REGULAR, position=-1}, ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}, ColumnDefinition{name=body, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=timestamp, type=org.apache.cassandra.db.marshal.TimestampType, kind=REGULAR, position=-1}, ColumnDefinition{name=team_member_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[]] To org.apache.cassandra.config.CFMetaData@3c435610[cfId=ce9816f0-d6b4-11e6-8fe6-51b56621147b,ksName=skill_directory_keyspace,cfName=skillreviews,flags=[COMPOUND],params=TableParams{comment=, read_repair_chance=0.0, dclocal_read_repair_chance=0.1, bloom_filter_fp_chance=0.01, crc_check_chance=1.0, gc_grace_seconds=864000, default_time_to_live=0, memtable_flush_period_in_ms=0, min_index_interval=128, max_index_interval=2048, speculative_retry=99PERCENTILE, caching={'keys' : 'ALL', 'rows_per_partition' : 'NONE'}, compaction=CompactionParams{class=org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy, options={max_threshold=32, min_threshold=4}}, compression=org.apache.cassandra.schema.CompressionParams@76f0239a, extensions={}},comparator=comparator(org.apache.cassandra.db.marshal.UUIDType),partitionColumns=[[] | [body positive team_member_id timestamp]],partitionKeyColumns=[ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}],clusteringColumns=[ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}],keyValidator=org.apache.cassandra.db.marshal.UTF8Type,columnMetadata=[ColumnDefinition{name=skill_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, position=0}, ColumnDefinition{name=positive, type=org.apache.cassandra.db.marshal.BooleanType, kind=REGULAR, position=-1}, ColumnDefinition{name=id, type=org.apache.cassandra.db.marshal.UUIDType, kind=CLUSTERING, position=0}, ColumnDefinition{name=body, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}, ColumnDefinition{name=timestamp, type=org.apache.cassandra.db.marshal.TimestampType, kind=REGULAR, position=-1}, ColumnDefinition{name=team_member_id, type=org.apache.cassandra.db.marshal.UTF8Type, kind=REGULAR, position=-1}],droppedColumns={},triggers=[],indexes=[org.apache.cassandra.schema.IndexMetadata@4da34907[id=1dc25e0a-24ea-301f-9e85-702240b5fad1,name=skillreviews_id_idx,kind=COMPOSITES,options={target=id}]]]
cassandra_container | INFO  21:44:34 Initializing skill_directory_keyspace.skillreviews.skillreviews_id_idx
skilldirectory_container | 	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory_container | skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory_container | skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory_container | skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory_container | skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory_container | skilldirectory/router.initializeCassandra()
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory_container | skilldirectory/router.StartRouter(0x0)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
skilldirectory_container | main.main()
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
skilldirectory_container | time="2017-01-09T21:44:13Z" level=info msg="Getting Env: CASSANDRA_URL"
skilldirectory_container | time="2017-01-09T21:44:13Z" level=info msg="Getting Env: CASSANDRA_PORT"
skilldirectory_container | time="2017-01-09T21:44:13Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
skilldirectory_container | time="2017-01-09T21:44:13Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
skilldirectory_container | time="2017-01-09T21:44:13Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
skilldirectory_container | time="2017-01-09T21:44:13Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
skilldirectory_container | time="2017-01-09T21:44:13Z" level=debug msg="Using Password: cassandra"
skilldirectory_container | time="2017-01-09T21:44:13Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
skilldirectory_container | panic: (*logrus.Entry) (0x736e60,0xc420011310)
skilldirectory_container |
skilldirectory_container | goroutine 1 [running]:
skilldirectory_container | panic(0x736e60, 0xc420011310)
skilldirectory_container | 	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory_container | skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory_container | skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory_container | skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory_container | skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory_container | skilldirectory/router.initializeCassandra()
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory_container | skilldirectory/router.StartRouter(0x0)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
skilldirectory_container | main.main()
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
skilldirectory_container | time="2017-01-09T21:44:20Z" level=info msg="Getting Env: CASSANDRA_URL"
skilldirectory_container | time="2017-01-09T21:44:20Z" level=info msg="Getting Env: CASSANDRA_PORT"
skilldirectory_container | time="2017-01-09T21:44:20Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
skilldirectory_container | time="2017-01-09T21:44:20Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
skilldirectory_container | time="2017-01-09T21:44:20Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
skilldirectory_container | time="2017-01-09T21:44:20Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
skilldirectory_container | time="2017-01-09T21:44:20Z" level=debug msg="Using Password: cassandra"
skilldirectory_container | time="2017-01-09T21:44:20Z" level=panic msg="gocql: unable to create session: unable to discover protocol version: dial tcp 172.18.0.3:9042: getsockopt: connection refused"
skilldirectory_container | panic: (*logrus.Entry) (0x736e60,0xc420011310)
skilldirectory_container |
skilldirectory_container | goroutine 1 [running]:
skilldirectory_container | panic(0x736e60, 0xc420011310)
skilldirectory_container | 	/usr/local/Cellar/go/1.7.4/libexec/src/runtime/panic.go:500 +0x1a1
skilldirectory_container | skilldirectory/vendor/github.com/Sirupsen/logrus.Entry.log(0xc420010b40, 0xc42000fe30, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc420010b00, ...)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:124 +0x423
skilldirectory_container | skilldirectory/vendor/github.com/Sirupsen/logrus.(*Entry).Panic(0xc420010b90, 0xc420033d10, 0x1, 0x1)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/entry.go:169 +0x124
skilldirectory_container | skilldirectory/vendor/github.com/Sirupsen/logrus.(*Logger).Panic(0xc420010b40, 0xc420033d10, 0x1, 0x1)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/vendor/github.com/Sirupsen/logrus/logger.go:235 +0x6e
skilldirectory_container | skilldirectory/data.NewCassandraConnector(0xc42000a08e, 0x9, 0xc42000a06f, 0x4, 0xc42000e013, 0x18, 0xc42000a053, 0x9, 0xc42000a0b3, 0x9, ...)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/data/cassandra.go:63 +0x666
skilldirectory_container | skilldirectory/router.initializeCassandra()
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:48 +0x1d8
skilldirectory_container | skilldirectory/router.StartRouter(0x0)
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/router/router.go:98 +0x26
skilldirectory_container | main.main()
skilldirectory_container | 	/Users/brianhoehnepro/maryville/go/src/skilldirectory/main.go:20 +0x27
skilldirectory_container | time="2017-01-09T21:44:33Z" level=info msg="Getting Env: CASSANDRA_URL"
skilldirectory_container | time="2017-01-09T21:44:33Z" level=info msg="Getting Env: CASSANDRA_PORT"
skilldirectory_container | time="2017-01-09T21:44:33Z" level=info msg="Getting Env: CASSANDRA_KEYSPACE"
skilldirectory_container | time="2017-01-09T21:44:33Z" level=info msg="Getting Env: CASSANDRA_USERNAME"
skilldirectory_container | time="2017-01-09T21:44:33Z" level=info msg="Getting Env: CASSANDRA_PASSWORD"
skilldirectory_container | time="2017-01-09T21:44:33Z" level=info msg="New Connector Path: cassandra, Port: 9042, Keyspace: skill_directory_keyspace, Username: cassandra"
skilldirectory_container | time="2017-01-09T21:44:33Z" level=debug msg="Using Password: cassandra"
skilldirectory_container | time="2017-01-09T21:46:27Z" level=info msg="Handling Request: GET"
skilldirectory_container | time="2017-01-09T21:46:27Z" level=debug msg="Request: &{{} {<nil>}}"
skilldirectory_container | time="2017-01-09T21:46:27Z" level=debug msg="Performing query: SELECT JSON * FROM skills;"
skilldirectory_container | time="2017-01-09T21:47:00Z" level=info msg="Handling Request: POST"
skilldirectory_container | time="2017-01-09T21:47:00Z" level=debug msg="Request: &{%!s(*io.LimitedReader=&{0xc4200e1860 49}) <nil> %!s(*bufio.Reader=<nil>) %!s(bool=false) %!s(bool=true) {%!s(int32=0) %!s(uint32=0)} %!s(bool=false) %!s(bool=false) %!s(bool=false) %!s(func()=<nil>)}"
skilldirectory_container | time="2017-01-09T21:47:00Z" level=warning msg="Handler Method: POST, *errors.InvalidDataModelState: the \"skill_id\" field of all TMSkills must contain ID of an existing skill in the database"
skilldirectory_container | time="2017-01-09T21:47:12Z" level=info msg="Handling Request: POST"
skilldirectory_container | time="2017-01-09T21:47:12Z" level=debug msg="Request: &{%!s(*io.LimitedReader=&{0xc4200e1860 60}) <nil> %!s(*bufio.Reader=<nil>) %!s(bool=false) %!s(bool=true) {%!s(int32=0) %!s(uint32=0)} %!s(bool=false) %!s(bool=false) %!s(bool=false) %!s(func()=<nil>)}"
skilldirectory_container | time="2017-01-09T21:47:12Z" level=info msg="Saved Team Member: Yogi Bear"
skilldirectory_container | time="2017-01-09T21:48:20Z" level=info msg="Handling Request: GET"
skilldirectory_container | time="2017-01-09T21:48:20Z" level=debug msg="Request: &{{} {<nil>}}"
skilldirectory_container | time="2017-01-09T21:48:20Z" level=debug msg="Performing query: SELECT JSON * FROM teammembers;"
skilldirectory_container | time="2017-01-09T21:48:40Z" level=info msg="Handling Request: POST"
skilldirectory_container | time="2017-01-09T21:48:40Z" level=debug msg="Request: &{%!s(*io.LimitedReader=&{0xc4200e1860 47}) <nil> %!s(*bufio.Reader=<nil>) %!s(bool=false) %!s(bool=true) {%!s(int32=0) %!s(uint32=0)} %!s(bool=false) %!s(bool=false) %!s(bool=false) %!s(func()=<nil>)}"
skilldirectory_container | time="2017-01-09T21:48:40Z" level=info msg="Saved skill: Java"
skilldirectory_container | time="2017-01-09T21:48:55Z" level=info msg="Handling Request: GET"
skilldirectory_container | time="2017-01-09T21:48:55Z" level=debug msg="Request: &{{} {<nil>}}"
skilldirectory_container | time="2017-01-09T21:48:55Z" level=debug msg="Performing query: SELECT JSON * FROM skills;"
^CGracefully stopping... (press Ctrl+C again to force)
Stopping cassandra_container ...
Stopping skilldirectory_container ... done
Killing cassandra_container ... done
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ docker-compose up -d
Starting skilldirectory_container
Starting cassandra_container
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ docker ps
CONTAINER ID        IMAGE                                   COMMAND                  CREATED             STATUS                                  PORTS                                                       NAMES
500ceb29255a        maryville/skilldirectorycassandra:dev   "/docker-entrypoint.s"   18 minutes ago      Up 3 seconds                            7000-7001/tcp, 7199/tcp, 9160/tcp, 0.0.0.0:9042->9042/tcp   cassandra_container
a75bccccea96        maryville/skilldirectory:dev            "/bin/bash -c '/bin/s"   18 minutes ago      Restarting (2) Less than a second ago   0.0.0.0:8080->8080/tcp                                      skilldirectory_container
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ packet_write_wait: Connection to 54.91.229.122 port 22: Broken pipe
mclpcx015:skilldirssh brianhoehnepro$ ls
skilldirectorydev.pem
mclpcx015:skilldirssh brianhoehnepro$ cd ..
mclpcx015:~ brianhoehnepro$ ls
Applications		Documents		Library			Music			Pictures		README.md		bitbarplugins		eclipse			npm-debug.log		skilldirssh
Desktop			Downloads		Movies			MyPlayground.playground	Public			VirtualBox VMs		data			maryville		pubsub-index-service	test
mclpcx015:~ brianhoehnepro$ cd skilldirssh/
mclpcx015:skilldirssh brianhoehnepro$ ssh -i ~/skilldirssh/skilldirectorydev.pem ec2-user@54.91.229.122
Last login: Mon Jan  9 21:32:33 2017 from 12.160.138.2

       __|  __|_  )
       _|  (     /   Amazon Linux AMI
      ___|\___|___|

https://aws.amazon.com/amazon-linux-ami/2016.09-release-notes/
5 package(s) needed for security, out of 9 available
Run "sudo yum update" to apply all updates.
[ec2-user@ip-172-31-39-89 ~]$ ls
skilldirectoryinfra
[ec2-user@ip-172-31-39-89 ~]$ cd skilldirectoryinfra/
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ ls
devstack.sh  docker-compose.yml
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ nano docker-compose.yml
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ nano devstack.sh
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ ./devstack.sh
Stopping skilldirectory_container...
skilldirectory_container stopped.
ERROR: No such service: --no-recreate
Running skilldirectoryschema...
^CSchema update complete.
Starting skilldirectory_container
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ ^C
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ ^C
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ docker ps
CONTAINER ID        IMAGE                                   COMMAND                  CREATED             STATUS              PORTS                                                       NAMES
500ceb29255a        maryville/skilldirectorycassandra:dev   "/docker-entrypoint.s"   15 hours ago        Up 15 hours         7000-7001/tcp, 7199/tcp, 9160/tcp, 0.0.0.0:9042->9042/tcp   cassandra_container
a75bccccea96        maryville/skilldirectory:dev            "/bin/bash -c '/bin/s"   15 hours ago        Up 1 seconds        0.0.0.0:8080->8080/tcp                                      skilldirectory_container
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ nano devstack.sh
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ ./devstack.sh
Stopping skilldirectory_container...
skilldirectory_container stopped.
ERROR: No such service: --no-recreate
^C
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ ^C
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ ^C
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ nano devstack.sh
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ ./devstack.sh
skilldirectory_container already stopped.
Running skilldirectoryschema...
Schema update complete.
Starting skilldirectory_container
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ docker ps
CONTAINER ID        IMAGE                                   COMMAND                  CREATED             STATUS              PORTS                                                       NAMES
500ceb29255a        maryville/skilldirectorycassandra:dev   "/docker-entrypoint.s"   16 hours ago        Up 15 hours         7000-7001/tcp, 7199/tcp, 9160/tcp, 0.0.0.0:9042->9042/tcp   cassandra_container
a75bccccea96        maryville/skilldirectory:dev            "/bin/bash -c '/bin/s"   16 hours ago        Up 3 seconds        0.0.0.0:8080->8080/tcp                                      skilldirectory_container
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ ./devstack.sh
Stopping skilldirectory_container...
skilldirectory_container stopped.
Running skilldirectoryschema...
Schema update complete.
Starting skilldirectory_container
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ nano devstack.sh
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ ./devstack.sh
^C
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ nano devstack.sh
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ ./devstack.sh
^[[B^C
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ ^C
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ ^C
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ nano devstack.sh
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ ./devstack.sh
Running skilldirectoryschema...
Schema update complete.
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ nano devstack.sh
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ git status
On branch master
Your branch is up-to-date with 'origin/master'.
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   devstack.sh

no changes added to commit (use "git add" and/or "git commit -a")
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ git commit -am "--no-recreate flag, don't auto stop skilldirectory container"
[master 1c0d3d3] --no-recreate flag, don't auto stop skilldirectory container
 Committer: EC2 Default User <ec2-user@ip-172-31-39-89.ec2.internal>
Your name and email address were configured automatically based
on your username and hostname. Please check that they are accurate.
You can suppress this message by setting them explicitly. Run the
following command and follow the instructions in your editor to edit
your configuration file:

    git config --global --edit

After doing this, you may fix the identity used for this commit with:

    git commit --amend --reset-author

 1 file changed, 4 insertions(+), 15 deletions(-)
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ git push
warning: push.default is unset; its implicit value has changed in
Git 2.0 from 'matching' to 'simple'. To squelch this message
and maintain the traditional behavior, use:

  git config --global push.default matching

To squelch this message and adopt the new behavior now, use:

  git config --global push.default simple

When push.default is set to 'matching', git will push local branches
to the remote branches that already exist with the same name.

Since Git 2.0, Git defaults to the more conservative 'simple'
behavior, which only pushes the current branch to the corresponding
remote branch that 'git pull' uses to update the current branch.

See 'git help config' and search for 'push.default' for further information.
(the 'simple' mode was introduced in Git 1.7.11. Use the similar mode
'current' instead of 'simple' if you sometimes use older versions of Git)

Username for 'https://github.com': thebho
Password for 'https://thebho@github.com':
remote: Invalid username or password.
fatal: Authentication failed for 'https://github.com/maryvilledev/skilldirectoryinfra.git/'
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ git push
warning: push.default is unset; its implicit value has changed in
Git 2.0 from 'matching' to 'simple'. To squelch this message
and maintain the traditional behavior, use:

  git config --global push.default matching

To squelch this message and adopt the new behavior now, use:

  git config --global push.default simple

When push.default is set to 'matching', git will push local branches
to the remote branches that already exist with the same name.

Since Git 2.0, Git defaults to the more conservative 'simple'
behavior, which only pushes the current branch to the corresponding
remote branch that 'git pull' uses to update the current branch.

See 'git help config' and search for 'push.default' for further information.
(the 'simple' mode was introduced in Git 1.7.11. Use the similar mode
'current' instead of 'simple' if you sometimes use older versions of Git)

Username for 'https://github.com': thebho
Password for 'https://thebho@github.com':
remote: Invalid username or password.
fatal: Authentication failed for 'https://github.com/maryvilledev/skilldirectoryinfra.git/'
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ git push
warning: push.default is unset; its implicit value has changed in
Git 2.0 from 'matching' to 'simple'. To squelch this message
and maintain the traditional behavior, use:

  git config --global push.default matching

To squelch this message and adopt the new behavior now, use:

  git config --global push.default simple

When push.default is set to 'matching', git will push local branches
to the remote branches that already exist with the same name.

Since Git 2.0, Git defaults to the more conservative 'simple'
behavior, which only pushes the current branch to the corresponding
remote branch that 'git pull' uses to update the current branch.

See 'git help config' and search for 'push.default' for further information.
(the 'simple' mode was introduced in Git 1.7.11. Use the similar mode
'current' instead of 'simple' if you sometimes use older versions of Git)

Username for 'https://github.com': thebho
Password for 'https://thebho@github.com':
remote: Invalid username or password.
fatal: Authentication failed for 'https://github.com/maryvilledev/skilldirectoryinfra.git/'
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ git push
warning: push.default is unset; its implicit value has changed in
Git 2.0 from 'matching' to 'simple'. To squelch this message
and maintain the traditional behavior, use:

  git config --global push.default matching

To squelch this message and adopt the new behavior now, use:

  git config --global push.default simple

When push.default is set to 'matching', git will push local branches
to the remote branches that already exist with the same name.

Since Git 2.0, Git defaults to the more conservative 'simple'
behavior, which only pushes the current branch to the corresponding
remote branch that 'git pull' uses to update the current branch.

See 'git help config' and search for 'push.default' for further information.
(the 'simple' mode was introduced in Git 1.7.11. Use the similar mode
'current' instead of 'simple' if you sometimes use older versions of Git)

Username for 'https://github.com': thebho
Password for 'https://thebho@github.com':
remote: Invalid username or password.
fatal: Authentication failed for 'https://github.com/maryvilledev/skilldirectoryinfra.git/'
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ git status
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)
nothing to commit, working directory clean
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ git status
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)
nothing to commit, working directory clean
[ec2-user@ip-172-31-39-89 skilldirectoryinfra]$ nano devstack.sh

  GNU nano 2.5.3                                                                                 File: devstack.sh

#!/bin/bash

### Default flags and env vars
export CASSANDRA_USERNAME=cassandra
export CASSANDRA_PASSWORD=cassandra
drop_data_flag=false
export DEBUG_FLAG=true

### Parse all command line flags
for arg in "$@"
do
  if [[ $arg = "--dropdata" ]]; then
    drop_data_flag=true
  elif [[ $arg = "--nodebug" ]]; then
    export DEBUG_FLAG=false
  else
    echo Unrecognized option: \"$arg\"
    echo Valid options are: \"--dropdata\" and \"--nodebug\"
    exit 127 # exit code for option not found
  fi
done

### See if containers for Cassandra and/or Skilldirectory are cassandra_running
cassandra_running=$(docker inspect -f {{.State.Running}} cassandra_container)
skilldirectory_running=$(docker inspect -f {{.State.Running}} skilldirectory_container)

### If cassandra container is running and "--dropdata" flag was used, stop the container
if $cassandra_running && $drop_data_flag; then
    echo 'Stopping cassandra_container...'
    docker stop cassandra_container >/dev/null
    echo 'cassandra_container stopped.'
    docker-compose up -d cassandra
    sleep 25
fi

### If "--dropdata" flag was used, drop the project's Cassandra keyspace within container
if $drop_data_flag; then
    echo 'Dropping and rebuilding "skill_directory_keyspace" keyspace'
    docker exec -it cassandra_container bash usr/bin/cqlsh -u $CASSANDRA_USERNAME -p $CASSANDRA_PASSWORD -e "DROP KEYSPACE skill_directory_keyspace"
fi

### Execute CQL commands in the container from schema file to set up database
echo "Running skilldirectoryschema..."
docker exec -it cassandra_container bash usr/bin/cqlsh -u $CASSANDRA_USERNAME -p $CASSANDRA_PASSWORD -f /data/skilldirectoryschema.cql
echo "Schema update complete."

docker-compose up -d --no-recreate
