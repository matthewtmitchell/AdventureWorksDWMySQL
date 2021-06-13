/*=========================================================================== 
 File:     30_CREATE_AdventureWorksDW.sql 

 Summary:  Adds Primary Keys to the AdventureWorksDW sample database tables. 
           Run this on any version of MySQL to get AdventureWorksDW for your 
		   current version.   

 Date:     October 26, 2017 (Created for SQL Server) 
 Updated:  August 7, 2018   (Modified for MySQL syntax)
           May 30, 2019     (Modified file names to show the order they should be run in)
 
 Import Data Location: https://github.com/Microsoft/sql-server-samples/tree/master/samples/databases/adventure-works/data-warehouse-install-script

============================================================================*/ 

-- ******************************************************
-- Add Primary Keys
-- ******************************************************

-- <<< Run the scripts below to add primary keys to the tables that don't have them. >>>

-- Created on MM/DD/2019
ALTER TABLE dimDate
  ADD CONSTRAINT PK_dimDate
    PRIMARY KEY (DateKeyID);

-- Created on MM/DD/2019
ALTER TABLE FactAdditionalInternationalProductDescription
  ADD CONSTRAINT PK_FAIPD
    PRIMARY KEY (ProductKeyID, CultureName);

-- Created on MM/DD/2019
ALTER TABLE FactCurrencyRate
  ADD CONSTRAINT PK_FactCurrencyRate
    PRIMARY KEY (CurrencyKeyID, DateKeyID);

-- Created on MM/DD/2019
ALTER TABLE FactInternetSales
  ADD CONSTRAINT PK_FactInternetSales
    PRIMARY KEY (SalesOrderNumber, SalesOrderLineNumber);

-- Created on MM/DD/2019
ALTER TABLE FactInternetSalesReason
  ADD CONSTRAINT PK_FactInternetSalesReason
    PRIMARY KEY (SalesOrderNumber, SalesOrderLineNumber, SalesReasonKeyID);

-- Created on MM/DD/2019
ALTER TABLE FactProductInventory
  ADD CONSTRAINT PK_FactProductInventory
    PRIMARY KEY (ProductKeyID, DateKeyID);

-- Created on MM/DD/2019
ALTER TABLE FactResellerSales
  ADD CONSTRAINT PK_FactResellerSales
    PRIMARY KEY (SalesOrderNumber, SalesOrderLineNumber);