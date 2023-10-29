-- role and database
create role clustering replication login password 'clustering';

create database clustering with owner clustering ;


create table server (
    server_id varchar(20)
)