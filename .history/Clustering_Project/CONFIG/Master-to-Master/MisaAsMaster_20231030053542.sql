-- role and database
create role clustering_project replication login password 'clustering_project';

create database clustering_project with owner clustering_project ;

create table session 
(
    server_id varchar(20),
    crypted_id_session char(250),
    sessions varchar(250),
    dateb timestamp default(now())
);

-- CONFIGURATION

-- postgresql.conf
#------------------------------------------------------------------------------
# WRITE-AHEAD LOG
#------------------------------------------------------------------------------

# - Settings -

wal_level = logical			


-- pg_hba.conf (  Dylan)
TYPE  DATABASE        USER            ADDRESS                 METHOD

host    clustering      clustering    192.168.43.23/24         trust



-- table session publication
create publication pub_misa_clustering_project for table session where (server_id ='server_misa');

-- subscription
create subscription sub_misa_server_dylan_clustering_project connection 'dbname = clustering_project host = 192.168.43.8 user = clustering_project password = clustering_project ' publication pub_misa_clustering_project ;