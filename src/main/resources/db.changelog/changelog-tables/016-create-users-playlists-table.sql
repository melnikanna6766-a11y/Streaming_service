--liquibase formatted SQL

--changeset liquibase:create-users-playlists-table
create table users_playlists
(
    user_id     bigint references profiles (id),
    playlist_id bigint references playlists (id),
    primary key (user_id, playlist_id)
);
--rollback drop table users_playlists;