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

INSERT INTO books (title, author, publication_year, isbn, count, version) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 1925, '9780743273565', 10, '1st'),
('To Kill a Mockingbird', 'Harper Lee', 1960, '9780061120084', 15, '1st'),
('1984', 'George Orwell', 1949, '9780451524935', 20, '1st'),
('Pride and Prejudice', 'Jane Austen', 1813, '9780141439518', 12, '1st'),
('The Catcher in the Rye', 'J.D. Salinger', 1951, '9780316769488', 8, '1st'),
('The Hobbit', 'J.R.R. Tolkien', 1937, '9780547928227', 18, '1st'),
('Fahrenheit 451', 'Ray Bradbury', 1953, '9781451673319', 14, '1st'),
('Moby-Dick', 'Herman Melville', 1851, '9780142437247', 6, '1st'),
('War and Peace', 'Leo Tolstoy', 1869, '9780199232765', 9, '1st'),
('The Odyssey', 'Homer', -800, '9780140268867', 11, '1st'),
('Designing Data-Intensive Applications', 'Martin Kleppmann', 2017, '9781449373320', 5, '1st'),
('Clean Code', 'Robert C. Martin', 2008, '9780132350884', 7, '1st'),
('The Pragmatic Programmer', 'Andrew Hunt and David Thomas', 1999, '9780201616224', 10, '1st'),
('Introduction to Algorithms', 'Thomas H. Cormen, Charles E. Leiserson, Ronald L. Rivest, and Clifford Stein', 2009, '9780262033848', 4, '3rd'),
('Artificial Intelligence: A Modern Approach', 'Stuart Russell and Peter Norvig', 2010, '9780136042594', 6, '3rd'),
('Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', 1997, '9780590353427', 20, '1st'),
('The Lord of the Rings', 'J.R.R. Tolkien', 1954, '9780618640157', 15, '1st'),
('The Da Vinci Code', 'Dan Brown', 2003, '9780307474278', 12, '1st'),
('The Alchemist', 'Paulo Coelho', 1988, '9780061122415', 18, '1st'),
('The Kite Runner', 'Khaled Hosseini', 2003, '9781594631931', 14, '1st'),
('The Hunger Games', 'Suzanne Collins', 2008, '9780439023481', 16, '1st');