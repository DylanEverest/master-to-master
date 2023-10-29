-- Subscription to the central server
create subscription sub_server_dylan connection 'dbname = clustering host = 192.168.43.133 user = clustering password = clustering ' publication pub_server_dylan ;


-- CONFIGURATION

-- postgresql.conf
#------------------------------------------------------------------------------
# WRITE-AHEAD LOG
#------------------------------------------------------------------------------

# - Settings -

wal_level = logical			


-- pg_hba.conf ( Dylan and Alain)
TYPE  DATABASE        USER            ADDRESS                 METHOD

host    clustering      clustering    192.168.43.250/24       trust 
host    clustering      clustering    192.168.43.23/24        trust


-- publication 

create publication pub_misa for table session where (server_id ='server_misa');




-- subscription

