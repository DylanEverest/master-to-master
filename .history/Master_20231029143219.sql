-- role and database
create role clustering replication login password 'clustering';

create database clustering with owner clustering ;

-- server table
create table server (

    server_id varchar(20) primary key

) ;

-- server values for others
insert into server values ('server_alain'),('server_misa'),('server_dylan');


-- 
TYPE  DATABASE        USER            ADDRESS                 METHOD

host    clustering      clustering    192.168.43.23/24        trust
host    clustering      clustering    192.168.43.250/24       trust
host    clustering      clustering    192.168./24             trust