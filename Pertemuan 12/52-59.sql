CREATE DATABASE db_latihan_dml;
SHOW DATABASES;
USE db_latihan_dml;
CREATE TABLE buku (
    Id_buku CHAR(4) PRIMARY KEY,
    Judul_buku VARCHAR(45),
    Penulis VARCHAR(25),
    Thn_terbit YEAR,
    Penerbit VARCHAR(45)
);

INSERT INTO buku (Id_buku, Judul_buku, Penulis, Thn_terbit, Penerbit) VALUES
('BK01', 'Perahu Kertas', 'Dewi Lestari', 2007, 'Abadi Jaya'),
('BK02', 'Laskar Pelangi', 'Andrea Hirata', 2004, 'Abadi Jaya'),
('BK03', 'Sang Pemimpi', 'Andrea Hirata', 2005, 'Abadi Jaya'),
('BK04', 'Harry Potter 4', 'J.K.Rowling', 2003, 'Indo Karya'),
('BK05', 'Warnet SQL', 'DR. Nena', 2009, 'Wacana Ria');
SELECT * FROM buku;
SELECT * FROM buku WHERE Penerbit = 'Abadi Jaya';
SELECT Penerbit, COUNT(*) AS Jumlah_Buku 
FROM buku 
GROUP BY Penerbit;
SELECT * FROM buku ORDER BY Penerbit ASC;
SELECT Judul_buku, Penulis, Thn_terbit FROM buku;
SELECT * FROM buku WHERE Penulis LIKE 'A%';
SELECT * FROM buku WHERE Thn_terbit < 2005;
SELECT * FROM buku WHERE Judul_buku LIKE '%SQL%';
SELECT * FROM buku WHERE Penulis = 'Dewi Lestari';
SELECT Judul_buku, Penulis FROM buku ORDER BY Penulis ASC;
SELECT Judul_buku, Penulis FROM buku ORDER BY Penulis DESC;
SELECT Judul_buku, Penulis, Thn_terbit FROM buku WHERE Thn_terbit < 2005;
SELECT Judul_buku, Penulis, Thn_terbit, Penerbit 
FROM buku 
WHERE Thn_terbit < 2005 
ORDER BY Thn_terbit DESC;
SELECT Judul_buku, Penulis, Penerbit 
FROM buku 
WHERE Penulis = 'Andrea Hirata' 
ORDER BY Judul_buku DESC;

