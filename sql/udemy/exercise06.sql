SELECT * FROM tbl_barang WHERE kode_barang=1236;

SELECT * FROM tbl_barang ORDER BY harga_barang DESC;

SELECT * FROM tbl_barang WHERE nama_barang NOT IN ('Printer Epson', 'Intel Core i5');

SELECT * FROM tbl_nasabah WHERE Nama_nasabah LIKE '%Rizki%';

SELECT * FROM tbl_nasabah WHERE Premium<500000 AND Nama_nasabah NOT LIKE '%Dimas%';

SELECT Nama_pelanggan, Status, Nama_Barang, Jumlah_barang
FROM Tbl_Pelanggan
LEFT JOIN Tbl_Barang
ON Tbl_Pelanggan.Id_Pelanggan=Tbl_Barang.Id_Pelanggan;

SELECT nama_pelanggan, nama_barang, jumlah_barang, status
FROM tbl_pelanggan
JOIN tbl_barang
ON tbl_pelanggan.id_pelanggan=tbl_barang.id_pelanggan
WHERE nama_pelanggan LIKE '%edi%';