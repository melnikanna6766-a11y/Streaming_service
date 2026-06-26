--liquibase formatted SQL

--changeset liquibase:create-albums-table
create table albums
(
    id           bigserial primary key,
    album_name   varchar(20) not null,
    release_date Date        not null,
    album_type   bigint references album_types (id)
);
--rollback drop table albums;

