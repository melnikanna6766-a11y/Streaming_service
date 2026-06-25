--liquibase formatted SQL

--changeset liquibase:016
create table users_playlists
(
    id          bigserial primary key,
    user_id     bigint references profiles (id),
    playlist_id bigint references playlists (id)
);
--rollback drop table users_playlists;