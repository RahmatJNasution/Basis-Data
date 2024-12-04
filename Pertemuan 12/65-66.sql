CREATE DATABASE db_toko;
SHOW DATABASES;

CREATE TABLE brg (
    Kode_brg CHAR(4) PRIMARY KEY,
    Nama_brg VARCHAR(40) NOT NULL,
    Harga_brg INT(10) NOT NULL,
    Thn_pembuatan YEAR NOT NULL,
    Stok INT(3) DEFAULT 0
);

INSERT INTO brg (Kode_brg, Nama_brg, Harga_brg, Thn_pembuatan, Stok) VALUES
('BR01', 'Clame Plate', 40000, 2005, 100),
('BR02', 'CF Diafram', 35000, 2001, 250),
('BR03', 'Press Cover', 65000, 2002, 300),
('BR04', 'Terminal', 15000, 2000, 57),
('BR05', 'Aluminium Solt', 27000, 2006, 410);
SELECT * FROM brg;
SELECT kode_brg, nama_brg, stok 
FROM brg
ORDER BY nama_brg ASC;
SELECT * FROM brg 
WHERE nama_brg = 'Terminal';
SELECT * FROM brg 
WHERE nama_brg LIKE 'C%';
SELECT kode_brg, nama_brg, harga_brg, stok 
FROM brg 
WHERE stok < 200;
SELECT * FROM brg 
WHERE thn_pembuatan BETWEEN 2002 AND 2006;
SELECT * FROM brg 
LIMIT 3;
SELECT * FROM brg 
WHERE stok < 200 AND thn_pembuatan = 2000;
SELECT * FROM brg 
ORDER BY kode_brg 
LIMIT 3 OFFSET 0;
SELECT * FROM brg 
WHERE kode_brg != 'BR05';


