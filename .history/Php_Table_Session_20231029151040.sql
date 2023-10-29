create table session 
(
    pk serial primary key,
    server_id varchar(20) references server(server_id),
    crypted
)