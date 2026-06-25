--liquibase formatted SQL

--changeset liquibase:007
create table tracks
(
    id         bigserial primary key,
    track_name varchar(20) not null,
    track      bytea       not null,
    album_id   bigint references albums (id)
);
--rollback drop table tracks;

