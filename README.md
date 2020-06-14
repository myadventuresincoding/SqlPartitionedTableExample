# SQL Partitioned Table Example
Simple example showing how to create a partitioned table in SQL Server

## Prerequisites
If you already have SQL server, great! However, if you do not you can download and install SQL Express.

* Download [SQL Server Express](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)
* Download [SQL Server Management Studio](https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver15)

## Run the Example
In this example there are five scripts:
* 1_Create_Tables.sql
    * Creates two tables, one of which will be partitioned
* 2_Create_Partition.sql
    * Create a partition function, scheme, and primary key
* 3_Insert_Test_Data.sql
    * Add some example data to our tables
* 4_Query_Examples
    * Some example queries for querying the partitioned table
* 5_Cleanup
    * This script deletes tables and partitions added by the above example