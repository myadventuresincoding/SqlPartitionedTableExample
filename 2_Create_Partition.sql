
---
--- Create partition function by date
---
DECLARE @startDate datetime2 = '20200601' -- Start date for partitions
DECLARE @endDate datetime2 = '20200610' -- End date for partitions
DECLARE @DailyPartitionFunction nvarchar(max) =
	N'CREATE PARTITION FUNCTION DailyPartitionFunction (datetime)
	AS RANGE RIGHT FOR VALUES (';
DECLARE @i datetime2 = @startDate; 
WHILE @i &lt; @endDate
BEGIN
	SET @DailyPartitionFunction += '''' + CAST(@i as nvarchar(10)) + '''' + N', ';
	SET @i = DATEADD(DAY, 1, @i);
END
SET @DailyPartitionFunction += '''' + CAST(@i as nvarchar(10))+ '''' + N');';
EXEC sp_executesql @DailyPartitionFunction;
GO

---
--- Create partition scheme
---
CREATE PARTITION SCHEME DailyPartitionScheme
AS PARTITION DailyPartitionFunction ALL TO ([PRIMARY])
GO

---
--- Create partitioned primary key on table TemperatureHistory using partition scheme
---
ALTER TABLE [dbo].[TemperatureHistory]
    ADD CONSTRAINT [PK_TemperatureHistory_Partition_thermostatId_timestamp]
PRIMARY KEY CLUSTERED (
    [thermostatId] ASC,
    [timestamp] ASC
    )
    WITH (
		ONLINE = OFF -- This can be ONLINE = ON if using SQL Server Enterprise Edition 
    )
    ON DailyPartitionScheme([timestamp]);
GO