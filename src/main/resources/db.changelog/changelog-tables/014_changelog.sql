--liquibase formatted SQL

--changeset liquibase:014
create table following_followers
(
    id           bigserial primary key,
    following_id bigint references profiles (id),
    follower_id  bigint references profiles (id)
);
--rollback drop table following_followers;
