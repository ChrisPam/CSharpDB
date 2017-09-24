CREATE DATABASE Movies

CREATE TABLE Directors(
	Id INT PRIMARY KEY,
	DirectorName NVARCHAR(50) NOT NULL,
	Notes NVARCHAR(MAX)
)

INSERT INTO Directors (Id, DirectorName) VALUES
(1, 'Christian Pamidoff'),
(2, 'Valentin Dimitrov'),
(3, 'Maria Hristoforova'),
(4, 'Svetlin Nakov'),
(5, 'Simeon Sheytanov')

CREATE TABLE Genres (
	Id INT PRIMARY KEY,
	GenreName NVARCHAR(50) NOT NULL,
	Notes NVARCHAR(MAX)
)

INSERT INTO Genres (Id, GenreName) VALUES
(1, 'Action'),
(2, 'Comedy'),
(3, 'Fantasy'),
(4, 'Family'),
(5, 'Bulgarian')

CREATE TABLE Categories (
	Id INT PRIMARY KEY,
	CategoryName NVARCHAR(50) NOT NULL,
	Notes NVARCHAR(MAX)
)

INSERT INTO Categories (Id, CategoryName) VALUES
(1, 'Sport'),
(2, 'History'),
(3, 'Biography'),
(4, 'Music'),
(5, 'Erotic')

CREATE TABLE Movies (
	Id INT PRIMARY KEY,
	Title NVARCHAR(100) NOT NULL,
	DirectorId INT FOREIGN KEY REFERENCES Directors(Id),
	CopyrightYear DATE,
	Length TIME,
	GenreId INT FOREIGN KEY REFERENCES Genres(Id),
	CategoryId INT FOREIGN KEY REFERENCES Categories(Id),
	Rating INT,
	Notes NVARCHAR(MAX)
)

INSERT INTO Movies (Id, Title, DirectorId, GenreId, CategoryId) VALUES
(1, 'Starwars', 1, 2, 3),
(2, 'Warsstar', 2, 3, 4),
(3, 'Fast and furious', 3, 4, 5),
(4, 'Furious and Fast', 5, 4, 3),
(5, 'And Fast And Furious', 4, 3, 2)