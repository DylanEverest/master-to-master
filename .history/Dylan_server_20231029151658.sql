-- Subscription to the central server
create subscription sub_server_dylan connection 'dbname = clustering host = 192.168.43.133 user = clustering password = clustering ' publication pub_server_dylan ;


-- CONFIGURATION

-- postgresql.conf
#------------------------------------------------------------------------------
# WRITE-AHEAD LOG
#------------------------------------------------------------------------------

# - Settings -

wal_level = logical			





-- publication 

create publication pub_dylan for table session where (server_id ='server_dylan');


