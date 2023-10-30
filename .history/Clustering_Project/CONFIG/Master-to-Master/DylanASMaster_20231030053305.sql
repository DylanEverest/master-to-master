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


-- pg_hba.conf (  Misa)
TYPE  DATABASE        USER            ADDRESS                 METHOD

host    clustering      clustering    192.168.43.8/24         trust