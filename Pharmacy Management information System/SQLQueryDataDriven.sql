CREATE DATABASE pharmacy_db;
use pharmacy_db;

CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    dob DATE NOT NULL,
    address VARCHAR(255) NOT NULL,
    phone VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    gender VARCHAR(255) NOT NULL
);

CREATE TABLE suppliers (
    supplier_id INT PRIMARY KEY,
    Supplier_name VARCHAR(255) NOT NULL,
    phone VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL
);
CREATE TABLE Medicines (
    medicine_id INT PRIMARY KEY,
    medicine_name VARCHAR(255) NOT NULL,
    supplier_id INT NOT NULL,
	medicine_bprice DECIMAL (10,2) NOT NULL,
    medicine_sprice DECIMAL(10,2) NOT NULL,
	medicine_quantity INT NOT NULL,
	exprition_time DATE NOT NULL,
	foreign key (supplier_id) references suppliers (supplier_id)
);

CREATE TABLE prescriptions (
    prescription_id INT PRIMARY KEY,
    patient_id INT NOT NULL,
    medicine_name VARCHAR(255) NOT NULL,
    dose VARCHAR(255) NOT NULL,
    quantity INT NOT NULL,
    refills INT NOT NULL,
    date_written DATE NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
	phone VARCHAR(255) NOT NULL,
    salary INT NOT NULL,
	gender VARCHAR(255) NOT NULL, 
    starting_date DATE NOT NULL
);



CREATE TABLE purchases (

    purchase_id INT PRIMARY KEY,
	patient_id INT NOT NULL,
    supplier_id INT NOT NULL,
    medicine_id INT NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    date_purchased DATE NOT NULL,
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id),
    FOREIGN KEY (medicine_id) REFERENCES Medicines(medicine_id),
	FOREIGN KEY (patient_id) REFERENCES  patients(patient_id),
);

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
	);