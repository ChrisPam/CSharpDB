  SELECT *
	FROM Towns
   WHERE SUBSTRING(Name, 0, 2) IN ('M', 'K', 'B', 'E')
ORDER BY Name