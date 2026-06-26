--liquibase formatted SQL

--changeset liquibase:create-album-types-table
create table album_types
(
    id         bigserial primary key,
    album_type varchar(10) not null
);
--rollback drop table album_types;