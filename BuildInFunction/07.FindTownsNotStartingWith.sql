  SELECT *
	FROM Towns
   WHERE SUBSTRING(Name, 0, 2) NOT IN ('R', 'B', 'D')
ORDER BY Name