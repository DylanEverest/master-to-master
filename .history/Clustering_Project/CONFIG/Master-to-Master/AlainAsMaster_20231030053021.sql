-- role and database
create role clustering_project replication login password 'clustering';

create database clustering with owner clustering ;
