--liquibase formatted SQL

--changeset liquibase:010
create table albums_labels
(
    id       bigserial primary key,
    label_id bigint references labels (id),
    album_id bigint references albums (id)
);
--rollback drop table albums_labels;