CREATE DATABASE fakultas;
CREATE TABLE jurusan(
    ->     id  INTEGER PRIMARY KEY AUTO_INCREMENT,
    ->     kode CHAR(4) NOT NULL,
    ->     nama VARCHAR(50) NOT NULL
    -> );
desc jurusan;
CREATE TABLE mahasiswa(
    ->     id INTEGER PRIMARY KEY AUTO_INCREMENT,
    ->     id_jurusan INTEGER NOT NULL,
    ->     nim CHAR(8) NOT NULL,
    ->     nama VARCHAR(50) NOT NULL,
    ->     jenis_kelamin ENUM('laki-laki','perempuan') NOT NULL,
    ->     tempat_lahir VARCHAR(50) NOT NULL,
    ->     tanggal_lahir DATE NOT NULL,
    ->     alamat VARCHAR(50) NOT NULL,
    ->     FOREIGN KEY (id_jurusan) REFERENCES jurusan(id)
    -> );
desc mahasiswa;
show tables;
insert into jurusan (kode,nama) values ("PTIF","Pendidikan Teknik Informatika");
INSERT INTO jurusan VALUES
    -> (NULL,'APBL','Administrasi Publik'),
    -> (NULL, 'TRPL','Teknologi Rekayasa Perangkat Lunak'),
    -> (NULL, 'TPHT','Teknologi Pengolahan Hasil Ternak');
select * from jurusan;

insert into mahasiswa (id_jurusan,nim,nama,jenis_kelamin,tempat_lahir,tanggal_lahir,alamat) values (3,"55401055","Ridho","laki-laki","Semarang","2000-01-29","Jl.Ir.Soekarno");
INSERT INTO mahasiswa VALUES
    -> (NULL, 1, "55401060","Laisa","perempuan","Banyuwangi","2001-10-20","Jl.KH.Harun"),
    -> (NULL, 1, "55401061","Santika","perempuan","Banyuwangi","2000-10-27","Jl.Mawar"),
    -> (NULL, 2, "55401059","Azmi","laki-laki","Bali","2002-11-21","Jl.Ikan Pari");
select*from mahasiswa;
update mahasiswa set tempat_lahir ="Surabaya" where id=2;
update mahasiswa set id_jurusan =4, tempat_lahir ="Bandung" where id=1;
delete from mahasiswa where id=4;