CREATE DATABASE NIMMasingmasing_bab5;
SHOW DATABASES;
USE NIMMasingmasing_bab5;

CREATE TABLE buku (
    kode_buku CHAR(4) PRIMARY KEY,
    judul VARCHAR(55),
    pengarang VARCHAR(50),
    penerbit VARCHAR(35),
    harga INT (10)
);

DESCRIBE buku;

INSERT INTO buku (kode_buku, judul, pengarang, penerbit, harga) VALUES
('BK01', 'Rancangan ERD', 'Joko Susilo', 'Graha Pustaka', 65000),
('BK02', 'Diagram UML', 'Ahmad Sandi', 'Komunikatika', 40000),
('BK03', 'Web Programming', 'Rio Budiman', 'Graha Pustaka', 35000),
('BK04', 'Dasar Pemrograman', 'Artifa Ningrum', 'Tekno Press', 35000),
('BK05', 'Testing Program', 'Ria Kusumah', 'Ilmu Pustaka', 45000);


SELECT * FROM buku
ORDER BY harga DESC;

SELECT SUM(harga) AS total_harga FROM buku;

SELECT * FROM buku
ORDER BY harga ASC
LIMIT 1;

SELECT AVG(harga) AS rata_harga FROM buku;

SELECT bk.judul, bk.penerbit, bk.harga
FROM buku AS bk;

SELECT COUNT(*) AS jumlah_buku FROM buku;

UPDATE buku
SET judul = 'UML Dasar'
WHERE judul = 'Diagram UML';

INSERT INTO buku (kode_buku, judul, pengarang, penerbit, harga) 
VALUES ('BK06', 'Algoritma Lanjut', 'Raden Kraton', 'Graha Pustaka', 40000);

DELETE FROM buku
WHERE kode_buku = 'BK05';

SELECT * FROM buku;


