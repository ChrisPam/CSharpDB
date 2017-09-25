  SELECT CountryName, IsoCode
	FROM Countries
   WHERE LEN(CountryName) - LEN(REPLACE(CountryName, 'a', '')) >= 3
ORDER BY IsoCode