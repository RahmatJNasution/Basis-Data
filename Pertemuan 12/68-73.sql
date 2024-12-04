CREATE DATABASE db_dml_operator;
SHOW DATABASES;

create database db_dml_lanjutan;
USE db_dml_lanjutan;

CREATE TABLE pengajar (
    nip CHAR(4) PRIMARY KEY,
    nama VARCHAR(40),
    kota_asal VARCHAR(50),
    sks INT(2),
    gaji DOUBLE
);

DESCRIBE pengajar;

INSERT INTO pengajar (nip, nama, kota_asal, sks, gaji) VALUES
('0101', 'Ahmad Rio', 'Tangerang', 4, 3000000),
('0102', 'Iwan Kurniawan', 'Serang', 2, 2000000),
('0103', 'Asep Kusnandar', 'Tangerang', 4, 3000000),
('0104', 'Wati Irawati', 'Bandung', 3, 2500000),
('0105', 'Neng Sukaesih', 'Bandung', 2, 2000000),
('0106', 'Maya Putriah', 'Jakarta', 2, 2000000);

SELECT * FROM pengajar ORDER BY gaji DESC;

select avg(gaji) from pengajar;

select min(gaji) from pengajar;

select sum(gaji) from pengajar;

select sum(gaji) from pengajar where sks > 3;

SELECT DISTINCT kota_asal FROM pengajar ORDER BY kota_asal ASC;

SELECT AVG(gaji) AS rata_gaji FROM pengajar;

SELECT tp.nama, tp.sks, tp.gaji
FROM pengajar AS tp;

SELECT nama AS nama_pengajar FROM pengajar;

SELECT nama, gaji, sks AS jumlah_sks FROM pengajar;

SELECT nip, nama, kota_asal, sks, gaji, (sks * gaji) AS hasil
FROM pengajar;

SELECT nama, sks, sks * 100000 AS bonus FROM pengajar;

SELECT MAX(gaji) AS gaji_terbesar FROM pengajar;

SELECT nip, nama, kota_asal, sks, gaji, (sks * 250000) AS tunjangan
FROM pengajar;



