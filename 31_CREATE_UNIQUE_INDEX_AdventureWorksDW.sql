/*=========================================================================== 
 File:     30_CREATE_AdventureWorksDW.sql 

 Summary:  Adds indexes to the AdventureWorksDW sample database tables. Run
		   this on any version of MySQL to get AdventureWorksDW for your 
		   current version.   

 Date:     October 26, 2017 (Created for SQL Server) 
 Updated:  August 7, 2018   (Modified for MySQL syntax)
           May 30, 2019     (Modified file names to show the order they should be run in)
 
 Import Data Location: https://github.com/Microsoft/sql-server-samples/tree/master/samples/databases/adventure-works/data-warehouse-install-script

============================================================================*/ 

-- ******************************************************
-- Add Indexes
-- ******************************************************

-- <<< Run the scripts below to add indices to tables. >>>

  -- Created on MM/DD/2019
CREATE UNIQUE INDEX IX_dimCurrency
	ON dimCurrency (CurrencyAlternateKeyID);

-- Created on MM/DD/2019
CREATE UNIQUE INDEX IX_dimCustomer
  ON dimCustomer (CustomerAlternateKeyID);

-- Created on MM/DD/2019
CREATE UNIQUE INDEX IX_dimDate
  ON dimDate (FullDateAlternateKeyID);

-- Created on MM/DD/2019
CREATE INDEX IX_dimProduct
  ON dimProduct (ProductAlternateKeyID, StartDate);

-- Created on MM/DD/2019
CREATE UNIQUE INDEX IX_dimProductCategory
	ON dimProductCategory (ProductCategoryAlternateKeyID);

-- Created on MM/DD/2019
CREATE UNIQUE INDEX IX_dimProductSubcategory
	ON dimProductSubcategory (ProductSubcategoryAlternateKeyID);

-- Created on MM/DD/2019
CREATE UNIQUE INDEX IX_dimPromotion
	ON dimPromotion (PromotionAlternateKeyID);

-- Created on MM/DD/2019
CREATE UNIQUE INDEX IX_dimReseller
	ON dimReseller (ResellerAlternateKeyID);

-- Created on MM/DD/2019
CREATE UNIQUE INDEX IX_dimSalesTerritory
	ON dimSalesTerritory (SalesTerritoryAlternateKeyID);

-- Created on MM/DD/2019
CREATE UNIQUE INDEX IX_FactCallCenter
	ON FactCallCenter (DateKeyID, Shift);