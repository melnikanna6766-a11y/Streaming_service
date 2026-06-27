--liquibase formatted SQL

--changeset liquibase:create-following-followers-table
create table following_followers
(
    following_id bigint references profiles (id),
    follower_id  bigint references profiles (id),
    primary key (following_id, follower_id)
);
--rollback drop table following_followers;
