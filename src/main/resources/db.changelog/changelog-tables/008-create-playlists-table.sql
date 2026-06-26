--liquibase formatted SQL


--changeset liquibase:create-playlists-table
create table playlists
(
    id            bigserial primary key,
    playlist_name varchar(20) not null
);
--rollback drop table playlists;