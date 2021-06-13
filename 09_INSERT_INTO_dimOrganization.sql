-- Developed by: Matt Mitchell
-- Date: 09/26/2018

INSERT INTO AdventureWorksDW.dimOrganization (OrganizationKeyID, ParentOrganizationKeyID, PercentageOfOwnership, OrganizationName, CurrencyKeyID) VALUES ('1', '0', '1', 'AdventureWorks Cycle', '100');
INSERT INTO AdventureWorksDW.dimOrganization (OrganizationKeyID, ParentOrganizationKeyID, PercentageOfOwnership, OrganizationName, CurrencyKeyID) VALUES ('2', '1', '1', 'North America Operations', '100');
INSERT INTO AdventureWorksDW.dimOrganization (OrganizationKeyID, ParentOrganizationKeyID, PercentageOfOwnership, OrganizationName, CurrencyKeyID) VALUES ('3', '14', '1', 'Northeast Division', '100');
INSERT INTO AdventureWorksDW.dimOrganization (OrganizationKeyID, ParentOrganizationKeyID, PercentageOfOwnership, OrganizationName, CurrencyKeyID) VALUES ('4', '14', '1', 'Northwest Division', '100');
INSERT INTO AdventureWorksDW.dimOrganization (OrganizationKeyID, ParentOrganizationKeyID, PercentageOfOwnership, OrganizationName, CurrencyKeyID) VALUES ('5', '14', '1', 'Central Division', '100');
INSERT INTO AdventureWorksDW.dimOrganization (OrganizationKeyID, ParentOrganizationKeyID, PercentageOfOwnership, OrganizationName, CurrencyKeyID) VALUES ('6', '14', '1', 'Southeast Division', '100');
INSERT INTO AdventureWorksDW.dimOrganization (OrganizationKeyID, ParentOrganizationKeyID, PercentageOfOwnership, OrganizationName, CurrencyKeyID) VALUES ('7', '14', '1', 'Southwest Division', '100');
INSERT INTO AdventureWorksDW.dimOrganization (OrganizationKeyID, ParentOrganizationKeyID, PercentageOfOwnership, OrganizationName, CurrencyKeyID) VALUES ('8', '2', '0.75', 'Canadian Division', '19');
INSERT INTO AdventureWorksDW.dimOrganization (OrganizationKeyID, ParentOrganizationKeyID, PercentageOfOwnership, OrganizationName, CurrencyKeyID) VALUES ('9', '1', '1', 'European Operations', '36');
INSERT INTO AdventureWorksDW.dimOrganization (OrganizationKeyID, ParentOrganizationKeyID, PercentageOfOwnership, OrganizationName, CurrencyKeyID) VALUES ('10', '1', '0.75', 'Pacific Operations', '6');
INSERT INTO AdventureWorksDW.dimOrganization (OrganizationKeyID, ParentOrganizationKeyID, PercentageOfOwnership, OrganizationName, CurrencyKeyID) VALUES ('11', '9', '0.5', 'France', '36');
INSERT INTO AdventureWorksDW.dimOrganization (OrganizationKeyID, ParentOrganizationKeyID, PercentageOfOwnership, OrganizationName, CurrencyKeyID) VALUES ('12', '9', '0.25', 'Germany', '36');
INSERT INTO AdventureWorksDW.dimOrganization (OrganizationKeyID, ParentOrganizationKeyID, PercentageOfOwnership, OrganizationName, CurrencyKeyID) VALUES ('13', '10', '0.5', 'Australia', '6');
INSERT INTO AdventureWorksDW.dimOrganization (OrganizationKeyID, ParentOrganizationKeyID, PercentageOfOwnership, OrganizationName, CurrencyKeyID) VALUES ('14', '2', '1', 'USA Operations', '100');
