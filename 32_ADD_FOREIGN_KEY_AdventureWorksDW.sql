/*=========================================================================== 
 File:     30_CREATE_AdventureWorksDW.sql 

 Summary:  Adds foreign keys to the AdventureWorksDW sample database tables.
		   Run this on any version of MySQL to get AdventureWorksDW for your 
		   current version.   

 Date:     October 26, 2017 (Created for SQL Server) 
 Updated:  August 7, 2018   (Modified for MySQL syntax)
           May 30, 2019     (Modified file names to show the order they should be run in)
 
 Import Data Location: https://github.com/Microsoft/sql-server-samples/tree/master/samples/databases/adventure-works/data-warehouse-install-script

============================================================================*/ 

-- ****************************************
-- Create Foreign key constraints
-- ****************************************

-- Created on MM/DD/2019
ALTER TABLE dimCustomer
	ADD CONSTRAINT FK_dimCustomer
		FOREIGN KEY (GeographyKeyID) REFERENCES dimGeography (GeographyKeyID);

-- Created on MM/DD/2019

ALTER TABLE dimEmployee
	ADD CONSTRAINT FK_dimEmployee
		FOREIGN KEY (SalesTerritoryKeyID) REFERENCES dimSalesTerritory (SalesTerritoryKeyID);
  
-- Created on MM/DD/2019

ALTER TABLE dimGeography
	ADD CONSTRAINT FK_dimGeography
		FOREIGN KEY (SalesTerritoryKeyID) REFERENCES dimSalesTerritory (SalesTerritoryKeyID);
       
-- Created on MM/DD/2019

ALTER TABLE dimOrganization
  ADD CONSTRAINT FK_dimOrganization
    FOREIGN KEY (CurrencyKeyID) REFERENCES dimCurrency (CurrencyKeyID);

-- Created on MM/DD/2019

ALTER TABLE dimProductSubcategory
  ADD CONSTRAINT FK_dimProductSubcategory
    FOREIGN KEY (ProductCategoryKeyID) REFERENCES dimProductCategory (ProductCategoryKeyID);
  
-- Created on MM/DD/2019

ALTER TABLE dimReseller
	ADD CONSTRAINT FK_dimReseller
		FOREIGN KEY (GeographyKeyID) REFERENCES dimGeography (GeographyKeyID);

-- Created on MM/DD/2019

ALTER TABLE FactCallCenter
	ADD CONSTRAINT FK_FactCallCenter
		FOREIGN KEY (DateKeyID) REFERENCES dimDate (DateKeyID);

-- Created on MM/DD/2019

ALTER TABLE FactCurrencyRate
	ADD CONSTRAINT FK1_FactCurrencyRate
		FOREIGN KEY (DateKeyID) REFERENCES dimDate (DateKeyID);

ALTER TABLE FactCurrencyRate
	ADD CONSTRAINT FK2_FactCurrencyRate
		FOREIGN KEY (CurrencyKeyID) REFERENCES dimCurrency (CurrencyKeyID);
  
-- Created on MM/DD/2019

ALTER TABLE FactFinance
	ADD CONSTRAINT FK1_FactFinance
		FOREIGN KEY (ScenarioKeyID) REFERENCES dimScenario (ScenarioKeyID);

ALTER TABLE FactFinance
	ADD CONSTRAINT FK2_FactFinance
		FOREIGN KEY (OrganizationKeyID) REFERENCES dimOrganization (OrganizationKeyID);

ALTER TABLE FactFinance
	ADD CONSTRAINT FK3_FactFinance
		FOREIGN KEY (DepartmentGroupKeyID) REFERENCES dimDepartmentGroup (DepartmentGroupKeyID);

ALTER TABLE FactFinance
	ADD CONSTRAINT FK4_FactFinance
		FOREIGN KEY (DateKeyID) REFERENCES dimDate (DateKeyID);

ALTER TABLE FactFinance
	ADD CONSTRAINT FK5_FactFinance
		FOREIGN KEY (AccountKeyID) REFERENCES dimAccount (AccountKeyID);
  
-- Created on MM/DD/2019

ALTER TABLE FactInternetSales
	ADD CONSTRAINT FK1_FactInternetSales
		FOREIGN KEY (CurrencyKeyID) REFERENCES dimCurrency (CurrencyKeyID);

ALTER TABLE FactInternetSales
	ADD CONSTRAINT FK2_FactInternetSales
		FOREIGN KEY (OrderDateKeyID) REFERENCES dimDate (DateKeyID);

ALTER TABLE FactInternetSales
	ADD CONSTRAINT FK3_FactInternetSales
		FOREIGN KEY (DueDateKeyID) REFERENCES dimDate (DateKeyID);

ALTER TABLE FactInternetSales
	ADD CONSTRAINT FK4_FactInternetSales
		FOREIGN KEY (ShipDateKeyID) REFERENCES dimDate (DateKeyID);

ALTER TABLE FactInternetSales
	ADD CONSTRAINT FK5_FactInternetSales
		FOREIGN KEY (PromotionKeyID) REFERENCES dimPromotion (PromotionKeyID);

ALTER TABLE FactInternetSales
	ADD CONSTRAINT FK6_FactInternetSales
		FOREIGN KEY (SalesTerritoryKeyID) REFERENCES dimSalesTerritory (SalesTerritoryKeyID);
  
-- Created on MM/DD/2019

ALTER TABLE FactInternetSalesReason
  ADD CONSTRAINT FK_FactInternetSalesReason
    FOREIGN KEY (SalesReasonKeyID) REFERENCES dimSalesReason (SalesReasonKeyID);

-- Created on MM/DD/2019

ALTER TABLE FactProductInventory
  ADD CONSTRAINT FK1_FactProductInventory
    FOREIGN KEY (DateKeyID) REFERENCES dimDate (DateKeyID);
  
-- Created on MM/DD/2019

ALTER TABLE FactResellerSales
  ADD CONSTRAINT FK1_FactResellerSales
    FOREIGN KEY (CurrencyKeyID) REFERENCES dimCurrency (CurrencyKeyID);

ALTER TABLE FactResellerSales
  ADD CONSTRAINT FK2_FactResellerSales
    FOREIGN KEY (OrderDateKeyID) REFERENCES dimDate (DateKeyID);

ALTER TABLE FactResellerSales
  ADD CONSTRAINT FK3_FactResellerSales
    FOREIGN KEY (DueDateKeyID) REFERENCES dimDate (DateKeyID);

ALTER TABLE FactResellerSales
  ADD CONSTRAINT FK4_FactResellerSales
    FOREIGN KEY (ShipDateKeyID) REFERENCES dimDate (DateKeyID);

ALTER TABLE FactResellerSales
  ADD CONSTRAINT FK5_FactResellerSales
    FOREIGN KEY (PromotionKeyID) REFERENCES dimPromotion (PromotionKeyID);

ALTER TABLE FactResellerSales
  ADD CONSTRAINT FK6_FactResellerSales
    FOREIGN KEY (ResellerKeyID) REFERENCES dimReseller (ResellerKeyID);

ALTER TABLE FactResellerSales
  ADD CONSTRAINT FK7_FactResellerSales
    FOREIGN KEY (SalesTerritoryKeyID) REFERENCES dimSalesTerritory (SalesTerritoryKeyID);
  
-- Created on MM/DD/2019

ALTER TABLE FactSalesQuota
  ADD CONSTRAINT FK_FactSalesQuota
    FOREIGN KEY (DateKeyID) REFERENCES dimDate (DateKeyID);

-- Created on MM/DD/2019

ALTER TABLE FactSurveyResponse
  ADD CONSTRAINT FK1_FactSurveyResponse
    FOREIGN KEY (DateKeyID) REFERENCES dimDate (DateKeyID);
