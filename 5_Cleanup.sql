
---
--- Cleanup
---
ALTER TABLE [dbo].[TemperatureHistory] DROP CONSTRAINT [PK_TemperatureHistory_Partition_thermostatId_timestamp] WITH ( ONLINE = OFF )
GO

DROP TABLE [dbo].[TemperatureHistory]
GO

DROP TABLE [dbo].[Thermostat]
GO

DROP PARTITION SCHEME DailyPartitionScheme
GO

DROP PARTITION FUNCTION [DailyPartitionFunction]
GO