
---
--- Query for all Thermostats
---
SELECT * FROM [dbo].[Thermostat]


---
--- Example query reading from all 10 partitions
---
SELECT * FROM [dbo].[TemperatureHistory]
WHERE ThermostatId = 1
AND [timestamp] BETWEEN '2020-06-01' AND '2020-06-10'


---
--- Example query reading from 1 partition
---
SELECT * FROM [dbo].[TemperatureHistory]
WHERE thermostatId = 1 
AND [timestamp] BETWEEN '2020-06-03 00:00:00.000' AND '2020-06-03 23:59:59.000'