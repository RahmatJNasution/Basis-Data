show databases;
USE db_dml_lanjutan;

SHOW TABLES;
CREATE TABLE mata_kuliah (
    kode_mtkul CHAR(3) not null,
    nama_mtkul VARCHAR(30) not null,
    sks INT (2) not null,
    primary key (kode_mtkul)
);

desc mata_kuliah;

INSERT INTO mata_kuliah (kode_mtkul, nama_mtkul, sks) 
VALUES
('123', 'Algoritma Pemrograman', 4), 
('124', 'Praktikum Basis Data', 3), 
('125', 'Web Programming I', 4), 
('126', 'Bahasa Inggris', 2), 
('127', 'Multimedia', 3), 
('128', 'Mobile Programming I', 4);

select * from mata_kuliah;

SELECT COUNT(*) FROM mata_kuliah;

SELECT CONCAT(nama_mtkul, ' jumlah sks yaitu: ', sks) 
FROM mata_kuliah;

SELECT CONCAT(nama_mtkul, ' jumlah sks yaitu: ', sks) AS daftar_mata_kuliah
FROM mata_kuliah;

SELECT nama_mtkul AS `Mata Kuliah`
FROM mata_kuliah
ORDER BY `Mata Kuliah`;

SELECT sks AS `Jumlah SKS`
FROM mata_kuliah
LIMIT 4;

SET SQL_SAFE_UPDATES = 0;

UPDATE mata_kuliah
SET nama_mtkul = 'Java Programming I'
WHERE nama_mtkul = 'Mobile Programming I';

UPDATE mata_kuliah
SET sks = 3
WHERE nama_mtkul = 'Bahasa Inggris';

SELECT nama_mtkul, sks
FROM mata_kuliah
WHERE sks = 3;

INSERT INTO mata_kuliah (kode_mtkul, nama_mtkul, sks)
VALUES ('129', 'Java II', 4);

SELECT * FROM mata_kuliah;

UPDATE mata_kuliah
SET nama_mtkul = 'Java Programming II'
WHERE nama_mtkul = 'Java II';

DELETE FROM mata_kuliah
WHERE nama_mtkul = 'Multimedia';

SELECT kode_mtkul, nama_mtkul AS `Mata Kuliah`, sks AS `Jumlah SKS`
FROM mata_kuliah;






