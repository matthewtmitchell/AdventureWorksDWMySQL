/*=========================================================================== 
 File:     30_CREATE_AdventureWorksDW.sql 

 Summary:  Creates database views for the AdventureWorksDW database tables.
		   Run this on any version of MySQL to get AdventureWorksDW for your 
		   current version.   

 Date:     October 26, 2017 (Created for SQL Server) 
 Updated:  August 7, 2018   (Modified for MySQL syntax)
           May 30, 2019     (Modified file names to show the order they should be run in)
 
 Import Data Location: https://github.com/Microsoft/sql-server-samples/tree/master/samples/databases/adventure-works/data-warehouse-install-script

============================================================================*/ 

-- ******************************************************
-- Add database views.
-- ******************************************************

-- viewDMPrep will be used as a data source by the other data mining
-- views.  Uses DW data at customer, product, day, etc. granularity
-- and gets region, model, year, month, etc.

-- Created on MM/DD/2019

CREATE VIEW viewDMPrep
AS
    SELECT DPC.EnglishProductCategoryName,
           COALESCE (DP.ModelName, DP.EnglishProductName) AS Model,
           DC.CustomerKeyID,
           DST.SalesTerritoryGroup AS Region,
           CASE
               WHEN MONTH(CURDATE()) < MONTH(DC.BirthDate)
                 THEN DATEDIFF(DC.BirthDate, CURDATE()) - 1
               WHEN MONTH(CURDATE()) = MONTH(DC.BirthDate) AND DAY(CURDATE()) < DAY(DC.BirthDate)
                 THEN DATEDIFF(DC.BirthDate, CURDATE()) - 1
               ELSE DATEDIFF(DC.BirthDate, CURDATE())
           END AS Age,
           CASE
               WHEN DC.YearlyIncome < 40000 THEN 'Low'
               WHEN DC.YearlyIncome > 60000 THEN 'High'
               ELSE 'Moderate'
           END AS IncomeGroup,
           DD.CalendarYear,
           DD.FiscalYear,
           DD.MonthNumberOfYear AS Month,
           FIS.SalesOrderNumber AS OrderNumber,
           FIS.SalesOrderLineNumber AS LineNumber,
           FIS.OrderQuantity AS Quantity,
           FIS.ExtendedAmount AS Amount
    FROM FactInternetSales AS FIS
    JOIN dimDate AS DD ON (DD.DateKeyID = FIS.OrderDateKeyID)
    JOIN dimProduct AS DP ON (DP.ProductKeyID = FIS.ProductKeyID)
    JOIN dimProductSubcategory AS DPS ON (DPS.ProductSubcategoryKeyID = DP.ProductSubcategoryKeyID)
    JOIN dimProductCategory AS DPC ON (DPC.ProductCategoryKeyID = DPS.ProductCategoryKeyID)
    JOIN dimCustomer AS DC ON (DC.CustomerKeyID = FIS.CustomerKeyID)
    JOIN dimGeography AS DG ON (DG.GeographyKeyID = DC.GeographyKeyID)
    JOIN dimSalesTerritory AS DST ON (DST.SalesTerritoryKeyID = DG.SalesTerritoryKeyID);

-- viewTimeSeries view supports the creation of time series data mining models.
-- Replaces earlier bike models with successor models.
-- Abbreviates model names to improve readability in mining model viewer
-- Concatenates model and region so that table only has one input.
-- Creates a date field indexed to monthly reporting date for use in prediction.

-- Created on MM/DD/2019

CREATE VIEW viewTimeSeries
  AS 
      SELECT CASE VDP.Model
                 WHEN 'Mountain-100' THEN 'M200'
                 WHEN 'Road-150' THEN 'R250'
                 WHEN 'Road-650' THEN 'R750'
                 WHEN 'Touring-1000' THEN 'T1000'
                 ELSE LEFT(VDP.Model, 1) + RIGHT(VDP.Model, 3)
             END + ' ' + VDP.Region AS ModelRegion,
             CONCAT(CalendarYear, Month) AS TimeIndex,
             SUM(VDP.Quantity) AS Quantity,
             Sum(VDP.Amount) AS Amount,
  		       VDP.CalendarYear,
  		       VDP.Month,
             STR_TO_DATE(CONCAT(CalendarYear, '-', Month, '-', 25), '%Y-%m-%d') AS ReportingDate
      FROM viewDMPrep AS VDP
      WHERE VDP.Model IN ('Mountain-100', 'Mountain-200', 'Road-150', 'Road-250',
              'Road-650', 'Road-750', 'Touring-1000')  
      GROUP BY CASE VDP.Model
                   WHEN 'Mountain-100' THEN 'M200'
                   WHEN 'Road-150' THEN 'R250'
                   WHEN 'Road-650' THEN 'R750'
                   WHEN 'Touring-1000' THEN 'T1000'
                   ELSE LEFT(VDP.Model, 1) + RIGHT(VDP.Model, 3)
               END + ' ' + VDP.Region, CONCAT(CalendarYear, Month), CalendarYear, VDP.Month,
               STR_TO_DATE(CONCAT(CalendarYear, '-', Month, '-', 25), '%Y-%m-%d');

-- viewTargetMail supports targeted mailing data model
-- Uses viewDMPrep to determine if a customer buys a bike and joins to dimCustomer

-- Created on MM/DD/2019

CREATE VIEW viewTargetMail
  AS 
      SELECT DC.CustomerKeyID,
             DC.GeographyKeyID,
             DC.CustomerAlternateKeyID,
             DC.Title,
             DC.FirstName,
             DC.MiddleName,
             DC.LastName,
             DC.NameStyle,
             DC.BirthDate,
             DC.MaritalStatus,
             DC.Suffix,
             DC.Gender,
             DC.EmailAddress,
             DC.YearlyIncome,
             DC.TotalChildren,
             DC.NumberChildrenAtHome,
             DC.EnglishEducation,
             DC.SpanishEducation,
             DC.FrenchEducation,
             DC.EnglishOccupation,
             DC.SpanishOccupation,
             DC.FrenchOccupation,
             DC.HouseOwnerFlag,
             DC.NumberCarsOwned,
             DC.AddressLine1,
             DC.AddressLine2,
             DC.Phone,
             DC.DateFirstPurchase,
             DC.CommuteDistance,
             X.Region,
             X.Age,
             CASE X.Bikes
                 WHEN 0 THEN 0
                 ELSE 1
             END AS BikeBuyer
      FROM dimCustomer AS DC INNER JOIN (SELECT CustomerKeyID,
                                                Region,
                                                Age,
                                                Sum(CASE EnglishProductCategoryName
                                                        WHEN 'Bikes' THEN 1
                                                    ELSE 0
                                                    END) AS Bikes
                                         FROM viewDMPrep
                                         GROUP BY CustomerKeyID, Region, Age) AS X
                             ON DC.CustomerKeyID = X.CustomerKeyID;
  

-- viewAssocSeqOrders supports association and sequence clustering data mining models.
-- Limits data to FY2004.
-- Creates order case table and line item nested table.

-- Created on MM/DD/2019

CREATE VIEW viewAssocSeqOrders
  AS 
      SELECT DISTINCT OrderNumber,
                      CustomerKeyID,
                      Region,
                      IncomeGroup
      FROM viewDMPrep
      WHERE (FiscalYear = '2013');
