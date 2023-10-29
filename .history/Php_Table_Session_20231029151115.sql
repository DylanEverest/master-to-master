create table session 
(
    pk serial primary key,
    server_id varchar(20) references server(server_id),
    crypted_id_session char(250),
    sessions varchar(250),
    dateb TIMESTAMP
)