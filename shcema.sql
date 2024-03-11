--Product_Category table
CREATE TABLE Product_Category (
    ID INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    desc TEXT,
    created_at timestamp,
    modifies_at timestamp,
    deleted_ar timestamp,
);

-- Product table
CREATE TABLE Product (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    desc TEXT,
    SKU VARCHAR,
    Category_id INT,
    inventory_id INT,
    price DECIMAL,
    discount_id INT,
    created_at timestamp,
    modifies_at timestamp,
    deleted_ar timestamp,
    FOREIGN KEY (CategoryID) REFERENCES Product_Category(CategoryID)
);

--Product_Inventory table
CREATE TABLE Product_Category (
    ID INT PRIMARY KEY,
    quantity INT,
    created_at timestamp,
    modifies_at timestamp,
    deleted_ar timestamp,
);

-- Discount table
CREATE TABLE Product (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    desc TEXT,
    discount_percentage DECIMAL,
    active boolean,
    created_at timestamp,
    modifies_at timestamp,
    deleted_ar timestamp,
    FOREIGN KEY (CategoryID) REFERENCES Product_Category(CategoryID)
);