-- Subscription to the central server
create subscription sub_server_dylan connection 'dbname = clustering host = 192.168.43.133 user = clustering password = clustering ' publication pub_server_dylan ;


-- publication 

create publication pub_dylan_alain for table  where (server_id ='server_alain');
create publication pub_dylan_misa for table  where (server_id ='server_misa');