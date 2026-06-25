--liquibase formatted SQL

--changeset liquibase:012
create table tracks_playlists
(
    id          bigserial primary key,
    track_id    bigint references tracks (id),
    playlist_id bigint references playlists (id),
    date_added  Date   not null
);
--rollback drop table tracks_playlists;