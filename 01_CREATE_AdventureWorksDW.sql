/*=========================================================================== 
 File:     01_CREATE_AdventureWorksDW.sql 

 Summary:  Creates the AdventureWorksDW sample database tables. Run this on 
		   any version of MySQL to get AdventureWorksDW for your current version.   

 Date:     October 26, 2017 (Created for SQL Server) 
 Updated:  August 7, 2018   (Modified for MySQL syntax)
           May 30, 2019     (Modified file names to show the order they should be run in)
 
 Import Data Location: https://github.com/Microsoft/sql-server-samples/tree/master/samples/databases/adventure-works/data-warehouse-install-script

============================================================================*/ 

-- ****************************************************** 
-- Create tables 
-- ****************************************************** 

-- Inserted on MM/DD/2019
CREATE TABLE dimAccount ( 
  AccountKeyID                    int auto_increment primary key,
  ParentAccountKeyID              int          null,
  AccountCodeAlternateKeyID       int          null,
  ParentAccountCodeAlternateKeyID int          null,
  AccountDescription              varchar(50)  null,
  AccountType                     varchar(50)  null,
  Operator                        varchar(50)  null,
  CustomMembers                   varchar(300) null,
  ValueType                       varchar(50)  null,
  CustomMemberOptions             varchar(200) null
);
 
-- Inserted on MM/DD/2019
CREATE TABLE dimCurrency ( 
  CurrencyKeyID          int auto_increment primary key,
  CurrencyAlternateKeyID char(3)     null,
  CurrencyName           varchar(50) null 
); 
 
-- Inserted on MM/DD/2019
CREATE TABLE dimCustomer ( 
  CustomerKeyID          int auto_increment primary key,
  GeographyKeyID         int           null,
  CustomerAlternateKeyID varchar(15)   not null,
  Title                  varchar(8)    null,
  FirstName              varchar(50)   null,
  MiddleName             varchar(50)   null,
  LastName               varchar(50)   null,
  NameStyle              tinyint       null,
  BirthDate              date          null,
  MaritalStatus          char          null,
  Suffix                 varchar(10)   null,
  Gender                 varchar(1)    null,
  EmailAddress           varchar(50)   null,
  YearlyIncome           decimal(9, 2) null,
  TotalChildren          tinyint       null,
  NumberChildrenAtHome   tinyint       null,
  EnglishEducation       varchar(40)   null,
  SpanishEducation       varchar(40)   null,
  FrenchEducation        varchar(40)   null,
  EnglishOccupation      varchar(100)  null,
  SpanishOccupation      varchar(100)  null,
  FrenchOccupation       varchar(100)  null,
  HouseOwnerFlag         char          null,
  NumberCarsOwned        tinyint       null,
  AddressLine1           varchar(120)  null,
  AddressLine2           varchar(120)  null,
  Phone                  varchar(20)   null,
  DateFirstPurchase      date          null,
  CommuteDistance        varchar(15)   null
); 
 
-- Inserted on MM/DD/2019
CREATE TABLE dimDate ( 
  DateKeyID              int         not null,
  FullDateAlternateKeyID date        not null,
  DayNumberOfWeek        tinyint     not null,
  EnglishDayNameOfWeek   varchar(10) not null,
  SpanishDayNameOfWeek   varchar(10) not null,
  FrenchDayNameOfWeek    varchar(10) not null,
  DayNumberOfMonth       tinyint     not null,
  DayNumberOfYear        smallint(6) not null,
  WeekNumberOfYear       tinyint     not null,
  EnglishMonthName       varchar(10) not null,
  SpanishMonthName       varchar(10) not null,
  FrenchMonthName        varchar(10) not null,
  MonthNumberOfYear      tinyint     not null,
  CalendarQuarter        tinyint     not null,
  CalendarYear           smallint(6) not null,
  CalendarSemester       tinyint     not null,
  FiscalQuarter          tinyint     not null,
  FiscalYear             smallint(6) not null,
  FiscalSemester         tinyint     not null 
); 
 
-- Inserted on MM/DD/2019
CREATE TABLE dimDepartmentGroup ( 
    DepartmentGroupKeyID       int auto_increment primary key,
    ParentDepartmentGroupKeyID int         null,
    DepartmentGroupName        varchar(50) null 
); 
 
-- Inserted on MM/DD/2019
CREATE TABLE dimEmployee ( 
  EmployeeKeyID                          int auto_increment primary key,
  ParentEmployeeKeyID                    int            null,
  EmployeeNationalIDAlternateKeyID       varchar(15)    null,
  ParentEmployeeNationalIDAlternateKeyID varchar(15)    null,
  SalesTerritoryKeyID                    int            null,
  FirstName                              varchar(50)    not null,
  LastName                               varchar(50)    not null,
  MiddleName                             varchar(50)    null,
  NameStyle                              tinyint        not null,
  Title                                  varchar(50)    null,
  HireDate                               date           null,
  BirthDate                              date           null,
  LoginID                                varchar(256)   null,
  EmailAddress                           varchar(50)    null,
  Phone                                  varchar(25)    null,
  MaritalStatus                          char           null,
  EmergencyContactName                   varchar(50)    null,
  EmergencyContactPhone                  varchar(25)    null,
  SalariedFlag                           tinyint        null,
  Gender                                 char           null,
  PayFrequency                           tinyint        null,
  BaseRate                               decimal(9, 2)  null,
  VacationHours                          smallint(6)    null,
  SickLeaveHours                         smallint(6)    null,
  CurrentFlag                            tinyint        not null,
  SalesPersonFlag                        tinyint        not null,
  DepartmentName                         varchar(50)    null,
  StartDate                              date           null,
  EndDate                                date           null,
  EmploymentStatus                       varchar(50)    null,
  EmployeePhoto                          varbinary(255) null 
); 
 
-- Inserted on MM/DD/2019
CREATE TABLE dimGeography ( 
  GeographyKeyID           int auto_increment primary key,
  City                     varchar(30) null,
  StateProvinceCode        varchar(3)  null,
  StateProvinceName        varchar(50) null,
  CountryRegionCode        varchar(3)  null,
  EnglishCountryRegionName varchar(50) null,
  SpanishCountryRegionName varchar(50) null,
  FrenchCountryRegionName  varchar(50) null,
  PostalCode               varchar(15) null,
  SalesTerritoryKeyID      int         null,
  IpAddressLocator         varchar(15) null
); 
 
-- Inserted on MM/DD/2019
CREATE TABLE dimOrganization ( 
  OrganizationKeyID       int auto_increment primary key,
  ParentOrganizationKeyID int         null,
  PercentageOfOwnership   varchar(16) null,
  OrganizationName        varchar(50) null,
  CurrencyKeyID           int         null 
); 
 
-- Inserted on MM/DD/2019
CREATE TABLE dimProduct (
  ProductKeyID            int auto_increment primary key,
  ProductAlternateKeyID   varchar(25)    null,
  ProductSubcategoryKeyID int            null,
  WeightUnitMeasureCode   char(3)        null,
  SizeUnitMeasureCode     char(3)        null,
  EnglishProductName      varchar(50)    not null,
  SpanishProductName      varchar(50)    not null,
  FrenchProductName       varchar(50)    not null,
  StandardCost            decimal(9, 2)  null,
  FinishedGoodsFlag       tinyint        not null,
  Color                   varchar(15)    not null,
  SafetyStockLevel        smallint(6)    null,
  ReorderPoint            smallint(6)    null,
  ListPrice               decimal(9, 2)  null,
  Size                    varchar(50)    null,
  SizeRange               varchar(50)    null,
  Weight                  float          null,
  DaysToManufacture       int            null,
  ProductLine             char(2)        null,
  DealerPrice             decimal(9, 2)  null,
  Class                   char(2)        null,
  Style                   char(2)        null,
  ModelName               varchar(50)    null,
  LargePhoto              varbinary(255) null,
  EnglishDescription      varchar(400)   null,
  FrenchDescription       varchar(400)   null,
  ChineseDescription      varchar(400)   null,
  ArabicDescription       varchar(400)   null,
  HebrewDescription       varchar(400)   null,
  ThaiDescription         varchar(400)   null,
  GermanDescription       varchar(400)   null,
  JapaneseDescription     varchar(400)   null,
  TurkishDescription      varchar(400)   null,
  StartDate               datetime       null,
  EndDate                 datetime       null,
  ProductStatus           varchar(7)     null
);
 
-- Inserted on MM/DD/2019
CREATE TABLE dimProductCategory ( 
  ProductCategoryKeyID          int auto_increment primary key,
  ProductCategoryAlternateKeyID int         null,
  EnglishProductCategoryName    varchar(50) not null,
  SpanishProductCategoryName    varchar(50) not null,
  FrenchProductCategoryName     varchar(50) not null
); 
 
-- Inserted on MM/DD/2019
CREATE TABLE dimProductSubcategory ( 
  ProductSubcategoryKeyID          int auto_increment primary key,
  ProductSubcategoryAlternateKeyID int         null,
  EnglishProductSubcategoryName    varchar(50) not null,
  SpanishProductSubcategoryName    varchar(50) not null,
  FrenchProductSubcategoryName     varchar(50) not null,
  ProductCategoryKeyID             int         null 
); 
 
-- Inserted on MM/DD/2019
CREATE TABLE dimPromotion ( 
  PromotionKeyID           int auto_increment primary key,
  PromotionAlternateKeyID  int          null,
  EnglishPromotionName     varchar(255) null,
  SpanishPromotionName     varchar(255) null,
  FrenchPromotionName      varchar(255) null,
  DiscountPct              float        null,
  EnglishPromotionType     varchar(50)  null,
  SpanishPromotionType     varchar(50)  null,
  FrenchPromotionType      varchar(50)  null,
  EnglishPromotionCategory varchar(50)  null,
  SpanishPromotionCategory varchar(50)  null,
  FrenchPromotionCategory  varchar(50)  null,
  StartDate                datetime     not null,
  EndDate                  datetime     null,
  MinQty                   int          null,
  MaxQty                   int          null 
); 
 
-- Inserted on MM/DD/2019
CREATE TABLE dimReseller ( 
  ResellerKeyID          int auto_increment primary key,
  GeographyKeyID         int           null,
  ResellerAlternateKeyID varchar(15)   null,
  Phone                  varchar(25)   null,
  BusinessType           varchar(20)   not null,
  ResellerName           varchar(50)   not null,
  NumberEmployees        int           null,
  OrderFrequency         char          null,
  OrderMonth             tinyint       null,
  FirstOrderYear         int           null,
  LastOrderYear          int           null,
  ProductLine            varchar(50)   null,
  AddressLine1           varchar(60)   null,
  AddressLine2           varchar(60)   null,
  AnnualSales            decimal(9, 2) null,
  BankName               varchar(50)   null,
  MinPaymentType         tinyint       null,
  MinPaymentAmount       decimal(9, 2) null,
  AnnualRevenue          decimal(9, 2) null,
  YearOpened             int           null 
); 
 
-- Inserted on MM/DD/2019
CREATE TABLE dimSalesReason ( 
  SalesReasonKeyID          int auto_increment primary key,
  SalesReasonAlternateKeyID int         not null,
  SalesReasonName           varchar(50) not null,
  SalesReasonReasonType     varchar(50) not null
); 
 
-- Inserted on MM/DD/2019
CREATE TABLE dimSalesTerritory ( 
  SalesTerritoryKeyID          int auto_increment primary key,
  SalesTerritoryAlternateKeyID int            null,
  SalesTerritoryRegion         varchar(50)    not null,
  SalesTerritoryCountry        varchar(50)    not null,
  SalesTerritoryGroup          varchar(50)    null,
  SalesTerritoryImage          varbinary(255) null
); 
 
-- Inserted on MM/DD/2019
CREATE TABLE dimScenario ( 
  ScenarioKeyID int auto_increment primary key,
  ScenarioName  varchar(50) null 
); 
 
-- Inserted on MM/DD/2019
CREATE TABLE FactAdditionalInternationalProductDescription ( 
  ProductKeyID       int          not null,
  CultureName        varchar(50)  not null,
  ProductDescription text         not null
); 
 
-- Inserted on MM/DD/2019
CREATE TABLE FactCallCenter ( 
  FactCallCenterID    int auto_increment primary key,
  DateKeyID           int         not null,
  WageType            varchar(15) not null,
  Shift               varchar(20) not null,
  LevelOneOperators   smallint(6) not null,
  LevelTwoOperators   smallint(6) not null,
  TotalOperators      smallint(6) not null,
  Calls               int         not null,
  AutomaticResponses  int         not null,
  Orders              int         not null,
  IssuesRaised        smallint(6) not null,
  AverageTimePerIssue smallint(6) not null,
  ServiceGrade        float       not null,
  CallDate            datetime    null 
); 
 
-- Inserted on MM/DD/2019
CREATE TABLE FactCurrencyRate ( 
  CurrencyKeyID int      not null,
  DateKeyID     int      not null,
  AverageRate   float    not null,
  EndOfDayRate  float    not null,
  CurrencyDate  datetime null 
); 
 
-- Inserted on MM/DD/2019
CREATE TABLE FactFinance ( 
  FinanceKeyID         int auto_increment primary key,
  DateKeyID            int      not null,
  OrganizationKeyID    int      not null,
  DepartmentGroupKeyID int      not null,
  ScenarioKeyID        int      not null,
  AccountKeyID         int      not null,
  Amount               float    not null,
  FinanceDate          datetime null 
); 
 
-- Inserted on MM/DD/2019
CREATE TABLE FactInternetSales ( 
  ProductKeyID          int           not null,
  OrderDateKeyID        int           not null,
  DueDateKeyID          int           not null,
  ShipDateKeyID         int           not null,
  CustomerKeyID         int           not null,
  PromotionKeyID        int           not null,
  CurrencyKeyID         int           not null,
  SalesTerritoryKeyID   int           not null,
  SalesOrderNumber      varchar(20)   not null,
  SalesOrderLineNumber  tinyint       not null,
  RevisionNumber        tinyint       not null,
  OrderQuantity         smallint(6)   not null,
  UnitPrice             decimal(9, 2) not null,
  ExtendedAmount        decimal(9, 2) not null,
  UnitPriceDiscountPct  float         not null,
  DiscountAmount        float         not null,
  ProductStandardCost   decimal(9, 2) not null,
  TotalProductCost      decimal(9, 2) not null,
  SalesAmount           decimal(9, 2) not null,
  TaxAmt                decimal(9, 2) not null,
  Freight               decimal(9, 2) not null,
  CarrierTrackingNumber varchar(25)   null,
  CustomerPONumber      varchar(25)   null,
  OrderDate             datetime      null,
  DueDate               datetime      null,
  ShipDate              datetime      null 
); 
 
-- Inserted on MM/DD/2019
CREATE TABLE FactInternetSalesReason ( 
  SalesOrderNumber     varchar(20) not null,
  SalesOrderLineNumber tinyint     not null,
  SalesReasonKeyID     int         not null 
); 
 
-- Inserted on MM/DD/2019
CREATE TABLE FactProductInventory ( 
  ProductKeyID int           not null,
  DateKeyID    int           not null,
  MovementDate date          not null,
  UnitCost     decimal(9, 2) not null,
  UnitsIn      int           not null,
  UnitsOut     int           not null,
  UnitsBalance int           not null 
); 
 
-- Inserted on MM/DD/2019
CREATE TABLE FactResellerSales ( 
  ProductKeyID          int           not null,
  OrderDateKeyID        int           not null,
  DueDateKeyID          int           not null,
  ShipDateKeyID         int           not null,
  ResellerKeyID         int           not null,
  EmployeeKeyID         int           not null,
  PromotionKeyID        int           not null,
  CurrencyKeyID         int           not null,
  SalesTerritoryKeyID   int           not null,
  SalesOrderNumber      varchar(20)   not null,
  SalesOrderLineNumber  tinyint       not null,
  RevisionNumber        tinyint       null,
  OrderQuantity         smallint(6)   null,
  UnitPrice             decimal(9, 2) null,
  ExtendedAmount        decimal(9, 2) null,
  UnitPriceDiscountPct  float         null,
  DiscountAmount        float         null,
  ProductStandardCost   decimal(9, 2) null,
  TotalProductCost      decimal(9, 2) null,
  SalesAmount           decimal(9, 2) null,
  TaxAmt                decimal(9, 2) null,
  Freight               decimal(9, 2) null,
  CarrierTrackingNumber varchar(25)   null,
  CustomerPONumber      varchar(25)   null,
  OrderDate             datetime      null,
  DueDate               datetime      null,
  ShipDate              datetime      null 
); 
 
-- Inserted on MM/DD/2019
CREATE TABLE FactSalesQuota ( 
  SalesQuotaKeyID  int auto_increment primary key,
  EmployeeKeyID    int           not null,
  DateKeyID        int           not null,
  CalendarYear     smallint(6)   not null,
  CalendarQuarter  tinyint       not null,
  SalesAmountQuota decimal(9, 2) not null,
  SalesQuotaDate   datetime      null
); 
 
-- Inserted on MM/DD/2019
CREATE TABLE FactSurveyResponse ( 
  SurveyResponseKeyID           int auto_increment primary key,
  DateKeyID                     int         not null,
  CustomerKeyID                 int         not null,
  ProductCategoryKeyID          int         not null,
  EnglishProductCategoryName    varchar(50) not null,
  ProductSubcategoryKeyID       int         not null,
  EnglishProductSubcategoryName varchar(50) not null,
  SurveyDate                    datetime    null
); 
 
-- Inserted on MM/DD/2019
CREATE TABLE NewFactCurrencyRate ( 
  AverageRate   decimal(9, 6) null,
  CurrencyID    varchar(3)    null,
  CurrencyDate  date          null,
  EndOfDayRate  decimal(9, 8) null,
  CurrencyKeyID int           null,
  DateKeyID     int           null
); 
 
-- Inserted on MM/DD/2019
CREATE TABLE FactProspectiveBuyer ( 
  ProspectiveBuyerKeyID  int auto_increment primary key,
  ProspectAlternateKeyID varchar(15)   null,
  FirstName              varchar(50)   null,
  MiddleName             varchar(50)   null,
  LastName               varchar(50)   null,
  BirthDate              datetime      null,
  MaritalStatus          char          null,
  Gender                 varchar(1)    null,
  EmailAddress           varchar(50)   null,
  YearlyIncome           decimal(9, 2) null,
  TotalChildren          tinyint       null,
  NumberChildrenAtHome   tinyint       null,
  Education              varchar(40)   null,
  Occupation             varchar(100)  null,
  HouseOwnerFlag         char          null,
  NumberCarsOwned        tinyint       null,
  AddressLine1           varchar(120)  null,
  AddressLine2           varchar(120)  null,
  City                   varchar(30)   null,
  StateProvinceCode      varchar(3)    null,
  PostalCode             varchar(15)   null,
  Phone                  varchar(20)   null,
  Salutation             varchar(8)    null,
  UnknownID              int           null
); 

-- ****************************************************** 
-- Insert data from CSV files. 
-- ****************************************************** 

-- Data for dimAccount in 02_INSERT_INTO_dimAccount.sql added mm/dd/2019
-- Data for dimCurrency in 03_INSERT_INTO_dimCurrency.sql added mm/dd/2019
-- Data for dimCustomer in 04_INSERT_INTO_dimCustomer.sql added mm/dd/2019
-- Data for dimDate in 05_INSERT_INTO_dimDate.sql added mm/dd/2019
-- Data for dimDepartmentGroup in 06_INSERT_INTO_dimDepartmentGroup.sql added on mm/dd/2019
-- Data for dimEmployee in 07_INSERT_INTO_dimEmployee.sql added on mm/dd/2019
-- Data for dimGeography in 08_INSERT_INTO_dimGeography.sql added on mm/dd/2019
-- Data for dimOrganization in 09_INSERT_INTO_dimOrganization.sql added on mm/dd/2019
-- Data for dimProduct in 10_INSERT_INTO_dimProduct.sql added on mm/dd/2019
-- Data for dimProductCategory in 11_INSERT_INTO_dimProductCategory.sql added on mm/dd/2019
-- Data for dimProductSubcategory in 12_INSERT_INTO_dimProductSubcategory.sql added on mm/dd/2019
-- Data for dimPromotion in 13_INSERT_INTO_dimPromotion.sql added on mm/dd/2019
-- Data for dimReseller in 14_INSERT_INTO_dimReseller.sql added on mm/dd/2019
-- Data for dimSalesReason in 15_INSERT_INTO_dimSalesReason.sql added on mm/dd/2019
-- Data for dimSalesTerritory in 16_INSERT_INTO_dimSalesTerritory.sql added on mm/dd/2019
-- Data for dimScenario in 17_INSERT_INTO_dimScenario.sql added on mm/dd/2019
-- Data for FactCallCenter in 18_INSERT_INTO_FactCallCenter.sql on mm/dd/2019
-- Data for FactCurrencyRate in 19_INSERT_INTO_FactCurrencyRate.sql on mm/dd/2019
-- Data for FactFinance in 20_INSERT_INTO_FactFinance.sql on mm/dd/2019
-- Data for FactInternetSales in 21_INSERT_INTO_FactInternetSales.sql on mm/dd/2019
-- Data for FactInternetSalesReason in 22_INSERT_INTO_FactInternetSalesReason.sql on mm/dd/2019
-- Data for FactSalesQuota in 23_INSERT_INTO_FactSalesQuota.sql on mm/dd/2019
-- Data for FactProductInventory in 24_INSERT_INTO_FactProductInventory.sql on mm/dd/2019
-- Data for FactProspectiveBuyer in 25_INSERT_INTO_FactProspectiveBuyer.sql on mm/dd/2019
-- Data for FactResellerSales in 26_INSERT_INTO_FactResellerSales.sql on mm/dd/2019
-- Data for FactSurveyResponse in 27_INSERT_INTO_FactSurveyResponse.sql on mm/dd/2019
-- Data for NewFactCurrencyRate in 28_INSERT_INTO_NewFactCurrencyRate.sql on mm/dd/2019
-- Data for FactAdditionalInternationalProductDescription in 29_INSERT_INTO_FactAddInternationalProdDesc.sql on mm/dd/2019