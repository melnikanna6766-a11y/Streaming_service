--liquibase formatted SQL

--changeset liquibase:create-tracks-playlists-table
create table tracks_playlists
(
    track_id    bigint references tracks (id),
    playlist_id bigint references playlists (id),
    date_added  Date   not null,
    primary key (track_id, playlist_id)
);
--rollback drop table tracks_playlists;