CREATE DATABASE db_for_primary_key;
USE db_for_primary_key;

CREATE TABLE students (
	student_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100)
);

INSERT INTO students (student_id, first_name, last_name, email) VALUES
(1, 'Aman', 'Kokate', 'amankokate@gmail.com'),
(2, 'Kasturi', 'Bhogal', 'kasturibhogal@gmail.com'),
(3,'Aditya', 'Hire', 'adityahire@gmail.com');

SELECT * FROM students;

INSERT INTO students (student_id, first_name, last_name, email) VALUES
(1, 'Aman', 'Kokate', 'amankokate@gmail.com');
# Error Code: 1062. Duplicate entry '1' for key 'students.PRIMARY'	

CREATE TABLE products (
	product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    description TEXT
);


INSERT INTO products (product_name, price, description) VALUES
('Laptop', 1299.99, 'High-Performance laptop'),
('Samrtphone', 799.99, 'Latest model'),
('Headphones', 199.99, 'Noise-cancelling headphone');

SELECT * FROM products;

CREATE TABLE orders (
	order_id INT,
    customer_id INT,
    order_date DATE NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    PRIMARY KEY(order_id)
);


# Create table without primary key  
CREATE TABLE suppliers (
	supplier_id INT,
    supplier_name VARCHAR(100) NOT NULL,
    person_contact VARCHAR(100)
);

ALTER TABLE suppliers
ADD PRIMARY KEY(supplier_id);


# Composite Primary key 

#Creating a table with a composite primary key 
CREATE TABLE enrollments (
	student_id INT,
    course_id INT,
    enrollment_date DATE NOT NULL,
    grade VARCHAR(2),
    PRIMARY KEY(student_id, course_id)
);


INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) VALUES
(01, 201, '2024-07-11', 'A+'),
(02, 202, '2024-08-12', 'B'),
(03, 203, '2024-06-02', 'A'),
(04, 204, '2024-09-23', 'C');

SELECT * FROM enrollments;























	

