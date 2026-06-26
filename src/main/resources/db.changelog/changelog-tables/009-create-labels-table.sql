--liquibase formatted SQL

--changeset liquibase:create-labels-table
create table labels
(
    id         bigserial primary key,
    label_name varchar(20) not null
);
--rollback drop table labels;