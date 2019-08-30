CREATE DATABASE restaurant_mayonesa_guacamole;

-- Create employees table
CREATE TABLE employees (
	employee_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    location_id INT UNSIGNED,
    first_name VARCHAR(120) NOT NULL,
    last_name VARCHAR(120) NOT NULL,
    email VARCHAR(320) NOT NULL, 
    phone VARCHAR(20) NOT NULL,
    address VARCHAR(250) NOT NULL,
    zip_code VARCHAR(50),
    start_date TIMESTAMP DEFAULT NOW(),
    end_date TIMESTAMP DEFAULT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

-- Create reservations table
CREATE TABLE reservations (
	reservation_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    customer_id INT UNSIGNED NOT NULL,
    employee_id INT UNSIGNED NOT NULL,
    use_id INT UNSIGNED,
    date TIMESTAMP,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

-- Create locations table
CREATE TABLE locations (
	location_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(120) NOT NULL,
    address VARCHAR(250) NOT NULL,
    city VARCHAR(120) NOT NULL,
    country VARCHAR(120) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

-- Create uses table
CREATE TABLE uses (
	use_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    check_in TIMESTAMP NOT NULL, 
    check_out TIMESTAMP NOT NULL,
    guests SMALLINT UNSIGNED,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

-- Create table_uses table
CREATE TABLE tables_uses (
	table_id INT UNSIGNED,
    use_id INT UNSIGNED
);

-- Create tables table
CREATE TABLE tables (
	table_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    location_id INT UNSIGNED,
    number TINYINT UNSIGNED NOT NULL,
    capacity TINYINT UNSIGNED NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

-- Create checks table
CREATE TABLE checks (
	check_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    employee_id INT UNSIGNED,
    use_id INT UNSIGNED,
    invoice_id INT UNSIGNED,
    date TIMESTAMP NOT NULL,
    tax DECIMAL(4,2) NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

-- Create orders table
CREATE TABLE orders (
	order_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    check_id INT UNSIGNED,
    table_id INT UNSIGNED,
    employee_id INT UNSIGNED,
    menu_id INT UNSIGNED,
    quantity TINYINT UNSIGNED NOT NULL,
    total DECIMAL(8,2),
    details VARCHAR(320),
    person_seat TINYINT UNSIGNED,
    served_at TIMESTAMP,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

-- Create customers table
CREATE TABLE customers (
	customer_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(120) NOT NULL,
    last_name VARCHAR(120) NOT NULL,
    address VARCHAR(320),
    zip_code VARCHAR(50),
    email VARCHAR(320),
    phone VARCHAR(20),
    rfc VARCHAR(50),
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

-- Create invoices table
CREATE TABLE invoices (
	invoice_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    customer_id INT UNSIGNED,
    payment_method_id INT UNSIGNED,
    franchise_id INT UNSIGNED,
    reference VARCHAR(320) NOT NULL,
    date TIMESTAMP NOT NULL,
    details VARCHAR(320),
    total DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

-- Create menu table
CREATE TABLE menu (
	menu_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(120) NOT NULL,
    price DECIMAL(8,2),
    details VARCHAR(320),
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

-- Create menu_extras table
CREATE TABLE menu_extras (
	menu_id INT UNSIGNED,
    extra_id INT UNSIGNED
);

-- Create order_extras table
CREATE TABLE order_extras (
	order_id INT UNSIGNED,
    extra_id INT UNSIGNED
);

-- Create extras table
CREATE TABLE extras (
	extra_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(120),
    price DECIMAL(8,2),
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

-- Create discounts_applied table
CREATE TABLE discounts_applied (
	discounts_applied_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    discount_id INT UNSIGNED,
    order_id INT UNSIGNED,
    check_id INT UNSIGNED,
    type ENUM('PORCENTAJE', 'CANTIDAD') NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

-- Create menu_categories table
CREATE TABLE menu_categories (
	menu_id INT UNSIGNED,
    category_id INT UNSIGNED
);

-- Create categories table
CREATE TABLE categories (
	category_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    category VARCHAR(120) NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

-- Create payment_methods table
CREATE TABLE payment_methods (
	payment_method_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    method VARCHAR(120) NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

-- Create discounts table
CREATE TABLE discounts (
	discount_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(120) NOT NULL,
    details VARCHAR(320),
    conditions TEXT
);

-- Create parameters table
CREATE TABLE parameters (
	parameter_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    franchise_id INT UNSIGNED,
    field VARCHAR(120) NOT NULL,
    value VARCHAR(320) NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);