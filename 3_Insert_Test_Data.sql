
---
--- Add a thermostat
---
INSERT INTO [dbo].[Thermostat] ([createdDateUtc], [name])
VALUES('2020-06-01', 'ABC-455-Lobby')
GO

---
--- Add some temperature readings
---
INSERT INTO [dbo].[TemperatureHistory]([thermostatId],[timestamp],[temperature])
VALUES(1,'2020-06-01 10:20:00.000',23.7)
GO
INSERT INTO [dbo].[TemperatureHistory]([thermostatId],[timestamp],[temperature])
VALUES(1,'2020-06-03 08:28:00.000',22.4)
GO
INSERT INTO [dbo].[TemperatureHistory]([thermostatId],[timestamp],[temperature])
VALUES(1,'2020-06-07 01:10:00.000',22.8)
GO
INSERT INTO [dbo].[TemperatureHistory]([thermostatId],[timestamp],[temperature])
VALUES(1,'2020-06-09 07:34:00.000',24.7)
GO