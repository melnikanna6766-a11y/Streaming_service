--liquibase formatted SQL

--changeset liquibase:create-users-playlists-table
create table users_playlists
(
    id          bigserial primary key,
    user_id     bigint references profiles (id),
    playlist_id bigint references playlists (id)
);
--rollback drop table users_playlists;