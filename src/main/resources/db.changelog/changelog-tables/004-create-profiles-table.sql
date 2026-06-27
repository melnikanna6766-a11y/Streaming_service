--liquibase formatted SQL

--changeset liquibase:create-profiles-table
create table profiles
(
    id                    bigserial primary key,
    user_name             varchar(50)  not null,
    password              varchar(200) not null,
    profile_photo         varchar(300),
    role_id               bigint references roles (id),
    country_code          bigint references countries_codes (code),
    subscription_id       bigint references subscription_plans (id),
    subscription_end_date Date
);
--rollback drop table profiles;

