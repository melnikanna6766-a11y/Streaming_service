--liquibase formatted SQL

--changeset liquibase:001
create table subscription_plans
(
    id             bigserial primary key,
    type           varchar(20) not null,
    cost_per_month numeric     not null
);
--rollback drop table subscription_plans;

