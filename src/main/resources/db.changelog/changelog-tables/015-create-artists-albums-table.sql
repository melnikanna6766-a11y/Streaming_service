--liquibase formatted SQL

--changeset liquibase:create-artists-albums-table
create table artists_albums
(
    id        bigserial primary key,
    artist_id bigint references profiles (id),
    album_id  bigint references albums (id)
);
--rollback drop table artists_albums;
