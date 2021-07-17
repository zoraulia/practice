CREATE TABLE tbl_Toko_Tono (
    Nama_Barang VARCHAR(255),
    Distributor VARCHAR(255),
    Stok NUMERIC,
    Harga_Barang DECIMAL (12,2)
);

insert into tbl_Toko_Tono select 'Tas','comp A',5,200000.00
INSERT INTO tbl_Toko_Tono VALUES
('Buku','comp A',120,12000.00),
('Pensil 2B','comp A',200,5000.00),
('Pensil Mekanik','comp A',200,6000.00),
('Isi Pensil Mekanik','comp A',200,3000.00),
('Tempat Pensil','comp B',20,20000.00),
('Rautan','comp B',25,10000.00),
('Spidol','comp B',100,21000.00),
('Sampul Plastik','comp C',100,2000.00),
('Sampul Karton','comp C',200,2000.00),
('Kertas HVS','comp C',20,20000.00),
('Gabus Karton','comp D',40,5000.00);

SELECT distributor, SUM(stok) AS jumlahbarang
FROM tbl_Toko_Tono
GROUP BY distributor;

SELECT
    nama_barang,
    harga_barang
FROM tbl_Toko_Tono
WHERE harga_barang = (SELECT MIN(harga_barang) FROM tbl_Toko_Tono)
LIMIT 1;

SELECT
    nama_barang,
    harga_barang
FROM tbl_Toko_Tono
ORDER BY harga_barang
LIMIT 1;

SELECT
    nama_barang,
    harga_barang
FROM tbl_Toko_Tono
WHERE harga_barang = (SELECT MAX(harga_barang) FROM tbl_Toko_Tono)
LIMIT 1;

SELECT
    nama_barang,
    harga_barang
FROM tbl_Toko_Tono
ORDER BY harga_barang DESC
LIMIT 1;

SELECT AVG(harga_barang)
FROM tbl_Toko_Tono;

SELECT
    distributor,
    SUM(harga_barang)
FROM tbl_Toko_Tono
WHERE distributor='comp C'
GROUP BY distributor;

SELECT
    distributor,
    SUM(stok) AS jumlahbarang,
    SUM(harga_barang) AS total_harga
FROM tbl_Toko_Tono
WHERE distributor='comp A'
GROUP BY distributor;