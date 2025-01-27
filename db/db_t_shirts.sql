-- Enable foreign keys
PRAGMA foreign_keys = ON;

-- Drop tables if they already exist
DROP TABLE IF EXISTS discounts;
DROP TABLE IF EXISTS t_shirts;

-- Create the t_shirts table
CREATE TABLE t_shirts (
    t_shirt_id INTEGER PRIMARY KEY AUTOINCREMENT,
    brand TEXT CHECK(brand IN ('Van Huesen', 'Levi', 'Nike', 'Adidas')) NOT NULL,
    color TEXT CHECK(color IN ('Red', 'Blue', 'Black', 'White')) NOT NULL,
    size TEXT CHECK(size IN ('XS', 'S', 'M', 'L', 'XL')) NOT NULL,
    price INTEGER CHECK (price BETWEEN 10 AND 50),
    stock_quantity INTEGER NOT NULL,
    UNIQUE (brand, color, size)
);

-- Create the discounts table
CREATE TABLE discounts (
    discount_id INTEGER PRIMARY KEY AUTOINCREMENT,
    t_shirt_id INTEGER NOT NULL,
    pct_discount REAL CHECK (pct_discount BETWEEN 0 AND 100),
    FOREIGN KEY (t_shirt_id) REFERENCES t_shirts(t_shirt_id)
);

-- Insert sample data into the t_shirts table
INSERT OR IGNORE INTO t_shirts (brand, color, size, price, stock_quantity)
VALUES
('Nike', 'Red', 'M', 20, 50),
('Levi', 'Blue', 'L', 25, 30),
('Adidas', 'Black', 'XL', 30, 40),
('Van Huesen', 'White', 'S', 15, 60),
('Nike', 'Black', 'M', 22, 40),
('Adidas', 'Red', 'L', 28, 35),
('Levi', 'White', 'XS', 18, 25),
('Van Huesen', 'Blue', 'M', 21, 55),
('Nike', 'Blue', 'S', 19, 45),
('Adidas', 'White', 'XL', 32, 50);

-- Insert sample data into the discounts table
INSERT OR IGNORE INTO discounts (t_shirt_id, pct_discount)
VALUES
(1, 10.00),
(2, 15.00),
(3, 20.00),
(4, 5.00),
(5, 25.00),
(6, 10.00),
(7, 30.00),
(8, 35.00),
(9, 40.00),
(10, 45.00);
