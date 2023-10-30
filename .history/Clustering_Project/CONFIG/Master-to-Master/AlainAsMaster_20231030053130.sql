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

