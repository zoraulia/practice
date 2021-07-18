CREATE TABLE employee (
    id INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    city VARCHAR(50)
);

CREATE TABLE salary_pt_sejahtera (
    id_employee INT NOT NULL,
    salary NUMERIC
);

CREATE TABLE salary_pt_prima_persada (
    id_employee INT NOT NULL,
    salary NUMERIC
);

INSERT INTO employee (id,name,city)
VALUES
    (101112,'TOMI','Jakarta'),
    (111213,'RIZKY','Bogor'),
    (121314,'YUDHA','Depok');

INSERT INTO salary_pt_sejahtera (id_employee, salary)
VALUES
    (101112,3000000),
    (111213,7000000),
    (121314,5000000);

INSERT INTO salary_pt_prima_persada (id_employee, salary)
VALUES
    (101112,5000000),
    (111213,6000000),
    (121314,9000000);

# Mencari ID, Nama, yang memliki salary di PT Sejahtera lebih besar dari Salary di PT Prima Persada
SELECT
    id,
    name,
    salary_pt_sejahtera.salary AS salary_sejahtera,
    salary_pt_prima_persada.salary AS salary_prima
FROM employee
INNER JOIN salary_pt_sejahtera
    ON employee.id=salary_pt_sejahtera.id_employee
INNER JOIN salary_pt_prima_persada
    ON employee.id=salary_pt_prima_persada.id_employee
HAVING salary_sejahtera>salary_prima;

# Menghitung jumlah ID dan Nama di PT Sejahtera
SELECT
    id,
    name,
    COUNT(id_employee) AS people_sejahtera
FROM employee
INNER JOIN salary_pt_sejahtera
    ON employee.id=salary_pt_sejahtera.id_employee
GROUP BY employee.id;

# Menghitung total gaji yang di dapatkan karyawan di PT Sejahtera dan PT Prima Persada
SELECT
    id,
    name,
    (salary_pt_sejahtera.salary + salary_pt_prima_persada.salary) AS total_salary
FROM employee
INNER JOIN salary_pt_sejahtera
    ON employee.id=salary_pt_sejahtera.id_employee
INNER JOIN salary_pt_prima_persada
    ON employee.id=salary_pt_prima_persada.id_employee;