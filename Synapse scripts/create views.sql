CREATE SCHEMA gold 

CREATE VIEW gold.calendar
AS
select * from
OPENROWSET(
    BULK 'https://azuredergstorage.dfs.core.windows.net/silver/calendar/',
    FORMAT='parquet'
) as cal

CREATE VIEW gold.customers
AS
select * from
OPENROWSET(
    BULK 'https://azuredergstorage.dfs.core.windows.net/silver/customers/',
    FORMAT='parquet'
) as cust

CREATE VIEW gold.Products
AS
select * from
OPENROWSET(
    BULK 'https://azuredergstorage.dfs.core.windows.net/silver/Products/',
    FORMAT='parquet'
) as prod

CREATE VIEW gold.ProductCategories
AS
select * from
OPENROWSET(
    BULK 'https://azuredergstorage.dfs.core.windows.net/silver/ProductCategories/',
    FORMAT='parquet'
) as prodcat

CREATE VIEW gold.Returns
AS
select * from
OPENROWSET(
    BULK 'https://azuredergstorage.dfs.core.windows.net/silver/Returns/',
    FORMAT='parquet'
) as ret

CREATE VIEW gold.Territories
AS
select * from
OPENROWSET(
    BULK 'https://azuredergstorage.dfs.core.windows.net/silver/Territories/',
    FORMAT='parquet'
) as ter

CREATE VIEW gold.Sales_2015
AS
select * from
OPENROWSET(
    BULK 'https://azuredergstorage.dfs.core.windows.net/silver/Sales_2015/',
    FORMAT='parquet'
) as sale


CREATE VIEW gold.Sales_2016
AS
select * from
OPENROWSET(
    BULK 'https://azuredergstorage.dfs.core.windows.net/silver/Sales_2016/',
    FORMAT='parquet'
) as sale1


CREATE VIEW gold.Sales_2017
AS
select * from
OPENROWSET(
    BULK 'https://azuredergstorage.dfs.core.windows.net/silver/Sales_2017/',
    FORMAT='parquet'
) as sale2