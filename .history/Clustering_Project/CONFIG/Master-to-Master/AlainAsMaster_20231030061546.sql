create role clustering_project replication login password 'clustering_project';

create database clustering_project with owner clustering_project ;

-- server table
create table iammaster (

    notification varchar(20) primary key

) ;