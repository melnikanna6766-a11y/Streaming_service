--liquibase formatted SQL

--changeset liquibase:003
create table roles
(
    id   bigserial primary key,
    role varchar(15) not null
);
--rollback drop table roles;