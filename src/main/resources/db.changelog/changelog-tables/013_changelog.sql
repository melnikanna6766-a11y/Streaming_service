--liquibase formatted SQL

--changeset liquibase:013
create table tracks_genres
(
    track_id bigint references tracks (id),
    genre_id bigint references genres (id),
    primary key (track_id, genre_id)
);
--rollback drop table tracks_genres;