--liquibase formatted SQL

--changeset liquibase:create-roles-table
create table roles
(
    id   bigserial primary key,
    role varchar(15) not null
);
--rollback drop table roles;