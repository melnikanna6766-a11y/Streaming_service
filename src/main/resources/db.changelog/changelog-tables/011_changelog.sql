--liquibase formatted SQL

--changeset liquibase:011
create table genres
(
    id    bigserial primary key,
    genre varchar(30) not null
);
--rollback drop table genres;