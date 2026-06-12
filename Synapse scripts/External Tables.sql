CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'sqldbadmin@123'

CREATE DATABASE SCOPED CREDENTIAL db_cred
WITH
IDENTITY ='Managed Identity'

CREATE EXTERNAL DATA SOURCE source_silver
WITH
(
     LOCATION='https://azuredergstorage.dfs.core.windows.net/silver/',
     CREDENTIAL=db_cred
)

CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
     LOCATION='https://azuredergstorage.dfs.core.windows.net/gold/',
     CREDENTIAL=db_cred
)

CREATE EXTERNAL FILE FORMAT parquet_format
WITH
(
    FORMAT_TYPE=PARQUET,
    DATA_COMPRESSION='org.apache.hadoop.io.compress.SnappyCodec'
)


CREATE EXTERNAL TABLE ext_cal
WITH
(
LOCATION='ext_cal',
DATA_SOURCE=source_gold,
FILE_FORMAT=parquet_format
)
AS
select * from gold.calendar

CREATE EXTERNAL TABLE ext_customers
WITH
(
LOCATION='ext_customers',
DATA_SOURCE=source_gold,
FILE_FORMAT=parquet_format
)
AS
select * from gold.customers

CREATE EXTERNAL TABLE ext_products
WITH
(
LOCATION='ext_products',
DATA_SOURCE=source_gold,
FILE_FORMAT=parquet_format
)
AS
select * from gold.Products

CREATE EXTERNAL TABLE ext_productCategories
WITH
(
LOCATION='ext_productCategories',
DATA_SOURCE=source_gold,
FILE_FORMAT=parquet_format
)
AS
select * from gold.ProductCategories

CREATE EXTERNAL TABLE ext_returns
WITH
(
LOCATION='ext_returns',
DATA_SOURCE=source_gold,
FILE_FORMAT=parquet_format
)
AS
select * from gold.Returns

CREATE EXTERNAL TABLE ext_territories
WITH
(
LOCATION='ext_territories',
DATA_SOURCE=source_gold,
FILE_FORMAT=parquet_format
)
AS
select * from gold.Territories

CREATE EXTERNAL TABLE ext_sales2015
WITH
(
LOCATION='ext_sales2015',
DATA_SOURCE=source_gold,
FILE_FORMAT=parquet_format
)
AS
select * from gold.Sales_2015

CREATE EXTERNAL TABLE ext_sales2016
WITH
(
LOCATION='ext_sales2016',
DATA_SOURCE=source_gold,
FILE_FORMAT=parquet_format
)
AS
select * from gold.Sales_2016

CREATE EXTERNAL TABLE ext_sales2017
WITH
(
LOCATION='ext_sales2017',
DATA_SOURCE=source_gold,
FILE_FORMAT=parquet_format
)
AS
select * from gold.Sales_2017