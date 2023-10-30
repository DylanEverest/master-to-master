create role clustering_project replication login password 'clustering_project';

create database clustering_project with owner clustering_project ;

-- server table
create table frommaster (

    notification varchar(20) 

) ;

-- pg_hba.conf
TYPE  DATABASE        USER            ADDRESS                 METHOD

host    clustering      clustering    192.168.43.23/24        trust
host    clustering      clustering    192.168.43.8/24         trust



create publication pub_alain_master for table frommaster ;
