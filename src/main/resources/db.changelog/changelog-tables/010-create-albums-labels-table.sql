--liquibase formatted SQL

--changeset liquibase:create-albums-labels-table
create table albums_labels
(
    label_id bigint references labels (id),
    album_id bigint references albums (id),
    primary key (label_id, album_id)
);
--rollback drop table albums_labels;