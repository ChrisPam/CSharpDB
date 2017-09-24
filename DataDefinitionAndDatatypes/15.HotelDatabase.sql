CREATE DATABASE Hotel

CREATE TABLE Employees (
	Id INT PRIMARY KEY,
	FirstName NVARCHAR(50) NOT NULL,
	LastName NVARCHAR(50) NOT NULL,
	Title NVARCHAR(50),
	Notex NVARCHAR(MAX)
)

INSERT INTO Employees (Id, FirstName, LastName) VALUES
(1, 'Christian', 'Pamidov'),
(2, 'Merrie', 'Christopher'),
(3, 'Svetlin', 'Nakov')

CREATE TABLE Customers (
	AccountNumber INT PRIMARY KEY,
	FirstName NVARCHAR(50) NOT NULL,
	LastName NVARCHAR(50) NOT NULL,
	PhoneNumber INT,
	EmergencyName NVARCHAR(50),
	EmergencyNumber INT,
	Notes NVARCHAR(MAX)
)

INSERT INTO Customers (AccountNumber, FirstName, LastName) VALUES
(1, 'Christian', 'Pamidov'),
(2, 'Merrie', 'Christopher'),
(3, 'Svetlin', 'Nakov')

CREATE TABLE RoomStatus(
	RoomStatus INT PRIMARY KEY,
	Notes NVARCHAR(MAX)
)

INSERT INTO RoomStatus (RoomStatus) VALUES
(1),
(2),
(3)

CREATE TABLE RoomTypes(
	RoomType INT PRIMARY KEY,
	Notes NVARCHAR(MAX)
)

INSERT INTO RoomTypes (RoomType) VALUES
(1),
(2),
(3)

CREATE TABLE BedTypes(
	BedType INT PRIMARY KEY,
	Notes NVARCHAR(MAX)
)

INSERT INTO BedTypes (BedType) VALUES
(1),
(2),
(3)

CREATE TABLE Rooms (
	RoomNumber INT PRIMARY KEY,
	RoomType INT FOREIGN KEY REFERENCES RoomTypes(RoomType),
	BedType INT FOREIGN KEY REFERENCES BedTypes(BedType),
	Rate INT,
	RoomStatus INT FOREIGN KEY REFERENCES RoomStatus(RoomStatus),
	Notes NVARCHAR(MAX)
)

INSERT INTO Rooms (RoomNumber, RoomType, BedType, RoomStatus) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3)

CREATE TABLE Payments (
	Id INT PRIMARY KEY,
	EmployeeId INT FOREIGN KEY REFERENCES Employees(Id),
	PaymentDate DATE,
	AccountNumber INT FOREIGN KEY REFERENCES Customers(AccountNumber),
	FirstDateOccupied DATE,
	LastDateOccupied DATE,
	TotalDays INT,
	AmountCharged DECIMAL(15, 2),
	TaxRate DECIMAL(15, 2),
	PaymentTotal DECIMAL(15, 2),
	Notes NVARCHAR(MAX)
)

INSERT INTO Payments (Id, EmployeeId, PaymentDate, AccountNumber) VALUES
(1, 1, GETDATE(), 1),
(2, 2, GETDATE(), 2),
(3, 3, GETDATE(), 3)

CREATE TABLE Occupancies (
	Id INT PRIMARY KEY,
	EmployeeId INT FOREIGN KEY REFERENCES Employees(Id),
	DateOccupied DATE,
	AccountNumber INT FOREIGN KEY REFERENCES Customers(AccountNumber),
	RoomNumber INT,
	RateApplied INT,
	PhoneCharge INT,
	Notes NVARCHAR(MAX)
)

INSERT INTO Occupancies (Id, EmployeeId, AccountNumber, RoomNumber) VALUES
(1, 1, 1, 5),
(2, 2, 2, 15),
(3, 3, 3, 25)
