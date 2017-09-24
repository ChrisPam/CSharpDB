CREATE TABLE People(
	Id INT PRIMARY KEY IDENTITY,
	Name NVARCHAR(200) NOT NULL,
	Picture VARBINARY(MAX),
	Height DECIMAL(15, 2),
	Weight DECIMAL(15, 2),
	Gender CHAR(1) NOT NULL,
	Birthdate DATE NOT NULL,
	Biography NVARCHAR(MAX)
)

INSERT INTO People (Name, Gender, Birthdate) VALUES
('Christian', 'm', '2000-9-15'),
('Valio', 'm', '1995-9-14'),
('Merrie', 'f', '1997-9-13'),
('Vladi', 'm', '1996-9-12'),
('Bojo', 'm', '1997-9-11')