
-- Customer Dimension Table
CREATE TABLE Customer_Dim (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20) NOT NULL
);

-- Branch Dimension Table
CREATE TABLE Branch_Dim (
    branch_id SERIAL PRIMARY KEY,
    branch_name VARCHAR(100) NOT NULL,
    branch_location VARCHAR(100) NOT NULL
);

-- Menu Item Dimension Table
CREATE TABLE Menu_Item_Dim (
    item_id SERIAL PRIMARY KEY,
    item_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

-- Payment Dimension Table
CREATE TABLE Payment_Dim (
    payment_id SERIAL PRIMARY KEY,
    payment_method VARCHAR(50) NOT NULL
);

-- Date Dimension Table
CREATE TABLE Date_Dim (
    date_id SERIAL PRIMARY KEY,
    order_date DATE NOT NULL,
    year INT NOT NULL,
    month VARCHAR(20) NOT NULL,
    day_of_week VARCHAR(20) NOT NULL,
    quarter INT NOT NULL
);

-- Sales Fact Table
CREATE TABLE Sales_Fact (
    sales_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES Customer_Dim(customer_id),
    branch_id INT REFERENCES Branch_Dim(branch_id),
    menu_item_id INT REFERENCES Menu_Item_Dim(item_id),
    payment_id INT REFERENCES Payment_Dim(payment_id),
    date_id INT REFERENCES Date_Dim(date_id),
    quantity_sold INT NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL
);

-- Inventory Fact Table
CREATE TABLE Inventory_Fact (
    inventory_id SERIAL PRIMARY KEY,
    branch_id INT REFERENCES Branch_Dim(branch_id),
    item_id INT REFERENCES Menu_Item_Dim(item_id),
    date_id INT REFERENCES Date_Dim(date_id),
    stock_level INT NOT NULL,
    replenishment_qty INT NOT NULL
);

-- Merged Promotion Table
CREATE TABLE Promotion (
    promotion_id SERIAL PRIMARY KEY,
    promotion_description VARCHAR(200) NOT NULL,
    customer_id INT REFERENCES Customer_Dim(customer_id),
    date_received DATE NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL
);
