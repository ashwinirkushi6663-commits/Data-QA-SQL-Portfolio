-- Create Raw Table for Online Retail Dataset

CREATE TABLE dbo.OnlineRetail (
    InvoiceNo NVARCHAR(50),
    StockCode NVARCHAR(50),
    Description NVARCHAR(255) NULL,
    Quantity INT,
    InvoiceDate NVARCHAR(50), -- imported as text for controlled conversion
    UnitPrice DECIMAL(10,2),
    CustomerID NVARCHAR(50) NULL,
    Country NVARCHAR(50)
);
