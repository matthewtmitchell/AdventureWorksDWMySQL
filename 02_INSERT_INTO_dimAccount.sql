-- Developed by: Matt Mitchell
-- Date: 09/03/2018

INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('1', '0', '1', '0', 'Balance Sheet', '', '~', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('2', '1', '10', '1', 'Assets', 'Assets', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('3', '2', '110', '10', 'Current Assets', 'Assets', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('4', '3', '1110', '110', 'Cash', 'Assets', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('5', '3', '1120', '110', 'Receivables', 'Assets', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('6', '5', '1130', '1120', 'Trade Receivables', 'Assets', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('7', '5', '1140', '1120', 'Other Receivables', 'Assets', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('8', '3', '1150', '110', 'Allowance for Bad Debt', 'Assets', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('9', '3', '1160', '110', 'Inventory', 'Assets', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('10', '9', '1162', '1160', 'Raw Materials', 'Assets', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('11', '9', '1164', '1160', 'Work in Process', 'Assets', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('12', '9', '1166', '1160', 'Finished Goods', 'Assets', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('13', '3', '1170', '110', 'Deferred Taxes', 'Assets', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('14', '3', '1180', '110', 'Prepaid Expenses', 'Assets', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('15', '3', '1185', '110', 'Intercompany Receivables', 'Assets', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('17', '2', '1200', '10', 'Property, Plant, Equipment', 'Assets', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('18', '17', '1210', '1200', 'Land & Improvements', 'Assets', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('19', '17', '1220', '1200', 'Buildings & Improvements', 'Assets', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('20', '17', '1230', '1200', 'Machinery & Equipment', 'Assets', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('21', '17', '1240', '1200', 'Office Furniture & Equipment', 'Assets', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('22', '17', '1250', '1200', 'Leasehold Improvements', 'Assets', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('23', '17', '1260', '1200', 'Construction In Progress', 'Assets', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('24', '2', '1300', '10', 'Other Assets', 'Assets', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('25', '1', '20', '1', 'Liabilities and Owners Equity', 'Liabilities', '-', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('26', '25', '210', '20', 'Liabilities', 'Liabilities', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('27', '26', '2200', '210', 'Current Liabilities', 'Liabilities', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('28', '27', '2210', '2200', 'Notes Payable', 'Liabilities', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('29', '27', '2230', '2200', 'Accounts Payable', 'Liabilities', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('30', '27', '2300', '2200', 'Accrued Expenses', 'Liabilities', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('31', '30', '2310', '2300', 'Salary & Other Comp', 'Liabilities', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('32', '30', '2320', '2300', 'Insurance', 'Liabilities', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('33', '30', '2330', '2300', 'Warranties', 'Liabilities', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('34', '27', '2340', '2200', 'Intercompany Payables', 'Liabilities', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('35', '27', '2350', '2200', 'Other Current Liabilities', 'Liabilities', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('36', '26', '2400', '210', 'Long Term Liabilities', 'Liabilities', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('37', '36', '2410', '2400', 'Long Term Obligations', 'Liabilities', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('38', '36', '2420', '2400', 'Pension Liability', 'Liabilities', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('39', '36', '2430', '2400', 'Other Retirement Benefits', 'Liabilities', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('40', '36', '2440', '2400', 'Other Long Term Liabilities', 'Liabilities', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('41', '25', '300', '20', 'Owners Equity', 'Liabilities', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('42', '41', '3010', '300', 'Partner Capital', 'Liabilities', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('43', '41', '3020', '300', 'Additional Paid In Capital', 'Liabilities', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('44', '41', '3030', '300', 'Retained Earnings', 'Liabilities', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('45', '44', '3540', '3030', 'Prior Year Retained Earnings', 'Liabilities', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('46', '44', '3550', '3030', 'Current Retained Earnings', 'Liabilities', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('47', '0', '4', '0', 'Net Income', 'Revenue', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('48', '47', '40', '4', 'Operating Profit', 'Revenue', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('49', '48', '400', '40', 'Gross Margin', 'Revenue', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('50', '49', '4100', '400', 'Net Sales', 'Revenue', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('51', '50', '4110', '4100', 'Gross Sales', 'Revenue', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('52', '51', '4500', '4110', 'Intercompany Sales', 'Revenue', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('53', '50', '4130', '4100', 'Returns and Adjustments', 'Expenditures', '-', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('54', '50', '4140', '4100', 'Discounts', 'Expenditures', '-', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('55', '49', '5000', '400', 'Total Cost of Sales', 'Expenditures', '-', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('56', '55', '5020', '5000', 'Standard Cost of Sales', 'Expenditures', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('57', '55', '5050', '5000', 'Variances', 'Expenditures', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('58', '48', '60', '40', 'Operating Expenses', 'Expenditures', '-', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('59', '58', '600', '60', 'Labor Expenses', 'Expenditures', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('60', '59', '6000', '600', 'Salaries', 'Expenditures', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('61', '59', '6020', '600', 'Payroll Taxes', 'Expenditures', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('62', '59', '6040', '600', 'Employee Benefits', 'Expenditures', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('63', '58', '6100', '60', 'Commissions', 'Expenditures', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('64', '58', '620', '60', 'Travel Expenses', 'Expenditures', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('65', '64', '6200', '620', 'Travel Transportation', 'Expenditures', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('66', '64', '6210', '620', 'Travel Lodging', 'Expenditures', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('67', '64', '6220', '620', 'Meals', 'Expenditures', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('68', '64', '6230', '620', 'Entertainment', 'Expenditures', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('69', '64', '6240', '620', 'Other Travel Related', 'Expenditures', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('70', '58', '630', '60', 'Marketing', 'Expenditures', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('71', '70', '6300', '630', 'Conferences', 'Expenditures', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('72', '70', '6310', '630', 'Marketing Collateral', 'Expenditures', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('73', '58', '6400', '60', 'Office Supplies', 'Expenditures', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('74', '58', '6500', '60', 'Professional Services', 'Expenditures', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('75', '58', '660', '60', 'Telephone and Utilities', 'Expenditures', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('76', '75', '6610', '660', 'Telephone', 'Expenditures', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('77', '75', '6620', '660', 'Utilities', 'Expenditures', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('78', '58', '6700', '60', 'Other Expenses', 'Expenditures', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('79', '58', '680', '60', 'Depreciation', 'Expenditures', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('80', '79', '6810', '680', 'Building Leasehold', 'Expenditures', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('81', '79', '6820', '680', 'Vehicles', 'Expenditures', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('82', '79', '6830', '680', 'Equipment', 'Expenditures', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('83', '79', '6840', '680', 'Furniture and Fixtures', 'Expenditures', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('84', '79', '6850', '680', 'Other Assets', 'Expenditures', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('85', '79', '6860', '680', 'Amortization of Goodwill', 'Expenditures', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('87', '58', '6920', '60', 'Rent', 'Expenditures', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('88', '47', '80', '4', 'Other Income and Expense', 'Revenue', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('89', '88', '8000', '80', 'Interest Income', 'Revenue', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('90', '88', '8010', '80', 'Interest Expense', 'Expenditures', '-', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('91', '88', '8020', '80', 'Gain/Loss on Sales of Asset', 'Revenue', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('92', '88', '8030', '80', 'Other Income', 'Revenue', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('93', '88', '8040', '80', 'Curr Xchg Gain/(Loss)', 'Revenue', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('94', '47', '8500', '4', 'Taxes', 'Expenditures', '-', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('95', '0', '9500', '0', 'Statistical Accounts', 'Statistical', '~', '', 'Units', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('96', '95', '9510', '9500', 'Headcount', 'Balances', '~', '', 'Units', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('97', '95', '9520', '9500', 'Units', 'Flow', '~', '', 'Units', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('98', '95', '9530', '9500', 'Average Unit Price', 'Balances', '~', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('99', '95', '9540', '9500', 'Square Footage', 'Balances', '~', '', 'Units', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('100', '27', '2220', '2200', 'Current Installments of Long-term Debt', 'Liabilities', '+', '', 'Currency', '');
INSERT INTO AdventureWorksDW.dimAccount (AccountKeyID, ParentAccountKeyID, AccountCodeAlternateKeyID, ParentAccountCodeAlternateKeyID, AccountDescription, AccountType, Operator, CustomMembers, ValueType, CustomMemberOptions)
VALUES ('101', '51', '4200', '4110', 'Trade Sales', 'Revenue', '+', '', 'Currency', '');