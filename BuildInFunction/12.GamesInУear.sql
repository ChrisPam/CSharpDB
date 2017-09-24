SELECT TOP(50) Name, FORMAT(Start,'yyyy-MM-dd 00:00:00.000') AS [Start]  FROM Games
WHERE YEAR(Start) BETWEEN 2011 AND 2012
ORDER BY Start, Name