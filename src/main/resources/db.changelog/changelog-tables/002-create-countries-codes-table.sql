--liquibase formatted SQL

--changeset liquibase:create-countries-codes-table
create table countries_codes
(
    code         varchar(3) primary key,
    name         varchar(20) not null,
    is_supported boolean     not null
);
--rollback drop table countries_codes;