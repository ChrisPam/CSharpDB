CREATE TABLE Users(
	Id INT PRIMARY KEY IDENTITY,
	Username VARCHAR(30) NOT NULL,
	Password VARCHAR(26) NOT NULL,
	ProfilePicture BINARY(900),
	LastLoginTime DATETIME,
	IsDeleted BIT,
)

INSERT INTO Users (Username, Password) VALUES
('ChrisPam', '123'),
('Valio', '123'),
('Vladi', '123'),
('Simo', '123'),
('Ivo', '123')