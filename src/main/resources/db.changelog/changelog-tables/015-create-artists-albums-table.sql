--liquibase formatted SQL

--changeset liquibase:create-artists-albums-table
create table artists_albums
(
    artist_id bigint references profiles (id),
    album_id  bigint references albums (id),
    primary key (artist_id, album_id)
);
--rollback drop table artists_albums;
