--liquibase formatted SQL


--changeset liquibase:008
create table playlists
(
    id            bigserial primary key,
    playlist_name varchar(20) not null
);
--rollback drop table playlists;