--liquibase formatted SQL

--changeset liquibase:009
create table labels
(
    id         bigserial primary key,
    label_name varchar(20) not null
);
--rollback drop table labels;