create table frommaster (

    notification varchar(20) primary key

) ;

create subscription sub_misa_server_alain_clustering_project connection 'dbname = clustering_project host = 192.168.43.133 user = clustering_project password = clustering_project ' publication  ;