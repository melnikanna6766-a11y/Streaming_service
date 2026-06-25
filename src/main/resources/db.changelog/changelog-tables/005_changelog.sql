--liquibase formatted SQL

--changeset liquibase:005
create table album_types
(
    id         bigserial primary key,
    album_type varchar(10) not null
);
--rollback drop table album_types;