--liquibase formatted sql

--changeset dibas:002
CREATE TABLE books
(
    id               BIGINT AUTO_INCREMENT PRIMARY KEY,
    title            VARCHAR(100) NOT NULL,
    author           VARCHAR(100) NOT NULL,
    publication_year INT,
    isbn             VARCHAR(13)  NOT NULL UNIQUE,
    count            INT          NOT NULL,
    version          VARCHAR(10),
    created_at       TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at       TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);