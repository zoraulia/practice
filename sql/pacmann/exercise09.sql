CREATE TABLE data_gaji_karyawan ( 
    person_id INT NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	gaji NUMERIC,
	bulan VARCHAR(15),
	tahun INT
);

INSERT INTO data_gaji_karyawan (person_id, first_name, last_name, gaji, bulan, tahun)
VALUES
    (1011223,'TOMI','AGASI',4500000,'JANUARY',2021),
    (1011223,'TOMI','AGASI',4700000,'FEBRUARI',2021),
    (1011223,'TOMI','AGASI',4000000,'MARET',2021),
    (1011224,'RIZKY','ABDUL',5000000,'JANUARY',2021),
    (1011224,'RIZKY','ABDUL',4800000,'FEBRUARI',2021),
    (1011224,'RIZKY','ABDUL',6200000,'MARET',2021),
    (1011225,'DIDIK','YUDHA',8300000,'JANUARY',2021),
    (1011225,'DIDIK','YUDHA',8100000,'FEBRUARI',2021),
    (1011225,'DIDIK','YUDHA',8000000,'MARET',2021);
    
# Berapa rata2 gaji dari tiap karyawan?
SELECT
    person_id,
    CONCAT(first_name, ' ', last_name) AS full_name,
    AVG(gaji) AS avg_gaji
FROM data_gaji_karyawan
GROUP BY person_id;

# Berapa total gaji yang harus dibayarkan perusahaan selama bulan january?
SELECT
    bulan,
    SUM(gaji) AS total
FROM data_gaji_karyawan
GROUP BY bulan
HAVING bulan='january';

# Berapa total gaji yang didapatkan TOMI pada bulan JANUARY dan FEBRUARI?
SELECT
    person_id,
    CONCAT(first_name, ' ', last_name) AS full_name,
    SUM(gaji) AS total_gaji
FROM data_gaji_karyawan
WHERE bulan IN ('january', 'februari') AND person_id=1011223;

# Berapa gaji terbesar yang didapatkan tiap karyawan?
SELECT
    person_id,
    CONCAT(first_name, ' ', last_name) AS full_name,
    MAX(gaji) AS gaji_terbesar
FROM data_gaji_karyawan
GROUP BY person_id;

# Dari bulan january sampai maret berapa kali tiap karyawan menerima gaji lebih dari 4,000,000?
SELECT
    person_id,
    CONCAT(first_name, ' ', last_name) AS full_name,
    CONCAT(COUNT(*), ' ', 'kali') AS terima_gaji
FROM data_gaji_karyawan
WHERE gaji>4000000
GROUP BY person_id;

# Dari bulan january sampai maret berapa banyak karyawan yang menerima total gaji lebih besar dari 18,000,000?
# SELECT
#     person_id,
#     CONCAT(first_name, ' ', last_name) AS full_name,
#     SUM(gaji) AS total_gaji
# FROM data_gaji_karyawan
# GROUP BY person_id
# HAVING total_gaji>18000000;
SELECT
    COUNT(DISTINCT person_id) AS jumlah_karyawan_gaji_morethan_18000000
FROM data_gaji_karyawan
GROUP BY person_id
HAVING SUM(gaji) > 18000000;