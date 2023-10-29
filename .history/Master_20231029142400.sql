-- role and database
create role clustering replication login password 'clustering';

create database clustering with owner clustering ;

-- server table
create table server (

    server_id varchar(20) primary key

) ;

-- server values for others
insert into server values ('server_alain'),('server_misa'),('server_dylan');