CREATE TABLE People (
	Id INT PRIMARY KEY IDENTITY,
	Name NVARCHAR(50),
	Birthdate DATETIME
)

INSERT INTO People (Name, Birthdate) VALUES 
('Christian', '2000-09-15'),
('Merrie', '1997-09-14'),
('Simo', '1995-09-13')

SELECT Name, 
	   DATEDIFF(YEAR, Birthdate, GETDATE()) AS [Age in Years],
	   DATEDIFF(MONTH, Birthdate, GETDATE()) AS [Age in Months],
	   DATEDIFF(DAY, Birthdate, GETDATE()) AS [Age in Days],
	   DATEDIFF(MINUTE, Birthdate, GETDATE()) AS [Age in Minutes]
  FROM People