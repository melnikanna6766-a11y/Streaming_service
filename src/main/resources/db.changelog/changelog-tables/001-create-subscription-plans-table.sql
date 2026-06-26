--liquibase formatted SQL

--changeset liquibase:create-subscription-plans-table
create table subscription_plans
(
    id             bigserial primary key,
    type           varchar(20) not null,
    cost_per_month numeric     not null
);
--rollback drop table subscription_plans;

