
---
--- Example query reading from a subset of partitions
---
SELECT * FROM [dbo].[TemperatureHistory]
WHERE [timestamp] BETWEEN '2020-06-02' AND '2020-06-08'