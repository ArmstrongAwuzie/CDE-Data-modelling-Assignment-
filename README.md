# Fufu Republic Data Engineering Project

## Project Overview
Fufu Republic is a restaurant chain that aims to leverage data to improve sales trends analysis, inventory management, and customer experience. This project implements a star schema-based dimensional model to support data-driven decision-making.

### Objective
1. Understand sales trends across locations, payment methods, and dining options.
2. Efficiently manage stock levels across branches.
3. Analyze customer behavior and provide personalized promotions.

## Data Model
The project uses a star schema to organize sales and inventory data. Below are the key tables:
- **Fact Tables**: `Sales_Fact`, `Inventory_Fact`
- **Dimension Tables**: `Customer_Dim`, `Branch_Dim`, `Menu_Item_Dim`, `Payment_Dim`, `Date_Dim`, `Promotion`

### Fact and Dimension Tables
- **Sales Fact Table**: Stores sales transaction data.
- **Inventory Fact Table**: Tracks stock levels and replenishment.
- **Promotion Table**: Tracks promotions and their distribution to customers.
- **Dimension Tables**: Store data related to customers, branches, menu items, payments, and dates.

### SQL Scripts
The SQL scripts to create the tables and implement the database schema are available in the [SQL_Scripts](./SQL_Scripts) folder.

### Diagram
A diagram of the star schema structure is provided in the [Diagrams](./Diagrams) folder.

## File Structure
