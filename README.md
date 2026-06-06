Azure End to End Data Engineering Project
It involves fetching data from GitHub API (HTTP) which acts as a Data Source for us.
We use Azure Data Factory (orchestration tool) for data ingestion from source to ADLS Gen2 - Bronze layer. 
Medallian Architecture (Bronze,silver,gold or raw,transformed,serving) is used here.
We will be using Databricks to pull the data from ADLS Gen2 Bronze layer, then transform and clean the data and then push the data to Silver layer.
We will be building Data Warehouse - Azure Synapse Analytics to serve the data to Data Analysts or Data Scientists.
Show data in Power BI by connecting powerBI to azure SQL Database and pull data to powerBI.
