
---
--- Create Thermostat Table
---
CREATE TABLE [dbo].[Thermostat] (
	[thermostatId]     [bigint] IDENTITY(1,1)	NOT NULL,
	[createdDateUtc]   [datetime]				NOT NULL,
	[name]             [nvarchar](100)			NOT NULL,
 CONSTRAINT [PK_Thermostat] PRIMARY KEY CLUSTERED (
	[thermostatId] ASC
	),
 CONSTRAINT [UC_Thermostat_Name] UNIQUE NONCLUSTERED (
	[name] ASC
	) 
) 
GO

---
--- Create TemperatureHistory
---
CREATE TABLE [dbo].[TemperatureHistory] (
    [thermostatId]   [bigint]   NOT NULL,
    [timestamp]      [datetime] NOT NULL,
    [temperature]    [float]    NOT NULL
)
GO

---
--- Add Foreign Key on ThermostatId from TemperatureHistory to Thermostat
---
ALTER TABLE [dbo].[TemperatureHistory]  
	WITH CHECK ADD  CONSTRAINT [FK_TemperatureHistory_Thermostat_thermostatId] 
	FOREIGN KEY([thermostatId])
REFERENCES [dbo].[Thermostat] ([thermostatId])
GO

ALTER TABLE [dbo].[TemperatureHistory] 
CHECK CONSTRAINT [FK_TemperatureHistory_Thermostat_thermostatId]
GO

