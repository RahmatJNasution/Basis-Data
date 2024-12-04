CREATE TABLE member (
    Id_member CHAR(5) PRIMARY KEY,
    Nama_member VARCHAR(40),
    Alamat VARCHAR(75),
    Semester CHAR(2),
    Usia CHAR(2)
);
INSERT INTO member (Id_member, Nama_member, Alamat, Semester, Usia) VALUES
('01001', 'Tio Ferdinand', 'Jl. Serpong Raya No.11', 4, 21),
('01002', 'Amad Sanches', 'Jl. Cilenggang No.20', 3, 20),
('01003', 'Riki Bahagia', 'Jl. Hutama Karya No.03', 4, 20),
('01004', 'Rere Kurnia', 'Jl. Smapal Serpong 167', 2, 19),
('01005', 'Erni Susanti', 'Jl. Nusa Loka 11 - BSD', 1, 18),
('01006', 'Loki Nurdin', 'Jl. BSD Raya No.20', 1, 18);

SELECT * FROM member WHERE Nama_member = 'Erni Susanti';
SELECT * FROM member WHERE Usia < 21;
SELECT * FROM member WHERE Nama_member != 'Rere Kurnia';
SELECT Nama_member, Semester FROM member ORDER BY Semester;
SELECT Nama_member, Semester, Usia FROM member WHERE Usia BETWEEN 19 AND 20;
SELECT * FROM member WHERE Usia > 18 AND Semester > 2;
SELECT * FROM member WHERE Usia > 18 OR Semester > 2;
SELECT Nama_member, Alamat FROM member WHERE Nama_member LIKE 'R%' ORDER BY Nama_member;
SELECT Nama_member, Alamat, Usia FROM member WHERE Usia > 18 ORDER BY Nama_member DESC;
SELECT * FROM member LIMIT 4;
SELECT * FROM member ORDER BY Semester DESC LIMIT 5;
SELECT * FROM member LIMIT 1, 3;
SELECT * FROM member ORDER BY Id_member LIMIT 0, 4;
