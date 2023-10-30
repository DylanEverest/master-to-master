create table frommaster (

    notification varchar(20) primary key

) ;

create subscription sub_misa_server_dylan_clustering_project connection 'dbname = clustering_project host = 192.168.43.23 user = clustering_project password = clustering_project ' publication pub_dylan_clustering_project ;