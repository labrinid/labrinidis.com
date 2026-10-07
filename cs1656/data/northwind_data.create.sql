-- =============================================================
-- Northwind Database — DDL (Table Definitions)
-- SQLite3 compatible
-- Intended to be run before northwind_data.sql
-- =============================================================

PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS OrderDetails;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Products;
DROP TABLE IF EXISTS Shippers;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Suppliers;
DROP TABLE IF EXISTS Categories;

CREATE TABLE Categories (
    CategoryID   INTEGER PRIMARY KEY AUTOINCREMENT,
    CategoryName TEXT    NOT NULL,
    Description  TEXT
);

CREATE TABLE Suppliers (
    SupplierID   INTEGER PRIMARY KEY AUTOINCREMENT,
    SupplierName TEXT    NOT NULL,
    ContactName  TEXT,
    Address      TEXT,
    City         TEXT,
    PostalCode   TEXT,
    Country      TEXT,
    Phone        TEXT
);

CREATE TABLE Customers (
    CustomerID   INTEGER PRIMARY KEY AUTOINCREMENT,
    CustomerName TEXT    NOT NULL,
    ContactName  TEXT,
    Address      TEXT,
    City         TEXT,
    PostalCode   TEXT,
    Country      TEXT
);

CREATE TABLE Employees (
    EmployeeID INTEGER PRIMARY KEY AUTOINCREMENT,
    LastName   TEXT    NOT NULL,
    FirstName  TEXT    NOT NULL,
    BirthDate  TEXT,
    Photo      BLOB,
    Notes      TEXT
);

CREATE TABLE Shippers (
    ShipperID   INTEGER PRIMARY KEY AUTOINCREMENT,
    ShipperName TEXT    NOT NULL,
    Phone       TEXT
);

CREATE TABLE Products (
    ProductID   INTEGER PRIMARY KEY AUTOINCREMENT,
    ProductName TEXT    NOT NULL,
    SupplierID  INTEGER,
    CategoryID  INTEGER,
    Unit        TEXT,
    Price       REAL    NOT NULL DEFAULT 0.00,
    CONSTRAINT fk_products_supplier FOREIGN KEY (SupplierID)
        REFERENCES Suppliers(SupplierID)
        ON UPDATE CASCADE ON DELETE SET NULL,
    CONSTRAINT fk_products_category FOREIGN KEY (CategoryID)
        REFERENCES Categories(CategoryID)
        ON UPDATE CASCADE ON DELETE SET NULL
);

CREATE TABLE Orders (
    OrderID    INTEGER PRIMARY KEY AUTOINCREMENT,
    CustomerID INTEGER,
    EmployeeID INTEGER,
    OrderDate  TEXT,
    ShipperID  INTEGER,
    CONSTRAINT fk_orders_customer FOREIGN KEY (CustomerID)
        REFERENCES Customers(CustomerID)
        ON UPDATE CASCADE ON DELETE SET NULL,
    CONSTRAINT fk_orders_employee FOREIGN KEY (EmployeeID)
        REFERENCES Employees(EmployeeID)
        ON UPDATE CASCADE ON DELETE SET NULL,
    CONSTRAINT fk_orders_shipper  FOREIGN KEY (ShipperID)
        REFERENCES Shippers(ShipperID)
        ON UPDATE CASCADE ON DELETE SET NULL
);

CREATE TABLE OrderDetails (
    OrderDetailID INTEGER PRIMARY KEY AUTOINCREMENT,
    OrderID       INTEGER NOT NULL,
    ProductID     INTEGER NOT NULL,
    Quantity      INTEGER NOT NULL CHECK (Quantity > 0),
    CONSTRAINT fk_orderdetails_order   FOREIGN KEY (OrderID)
        REFERENCES Orders(OrderID)
        ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_orderdetails_product FOREIGN KEY (ProductID)
        REFERENCES Products(ProductID)
        ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE INDEX idx_products_supplier  ON Products    (SupplierID);
CREATE INDEX idx_products_category  ON Products    (CategoryID);
CREATE INDEX idx_orders_customer    ON Orders      (CustomerID);
CREATE INDEX idx_orders_employee    ON Orders      (EmployeeID);
CREATE INDEX idx_orders_shipper     ON Orders      (ShipperID);
CREATE INDEX idx_orderdetails_order ON OrderDetails(OrderID);
CREATE INDEX idx_orderdetails_prod  ON OrderDetails(ProductID);
