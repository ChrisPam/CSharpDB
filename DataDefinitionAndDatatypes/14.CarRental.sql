CREATE DATABASE CarRental

CREATE TABLE Categories (
	Id INT PRIMARY KEY,
	CategoryName NVARCHAR(50) NOT NULL,
	DailyRate INT,
	WeeklyRate INT,
	MonthlyRate INT,
	WeekendRate INT
)

INSERT INTO Categories (Id, CategoryName) VALUES
(1, 'ASD'),
(2, 'FGH'),
(3, 'JKL')

CREATE TABLE Cars (
	Id INT PRIMARY KEY,
	PlateNumber INT,
	Manufacturer NVARCHAR(50) NOT NULL,
	Model NVARCHAR(50) NOT NULL,
	CarYear DATE,
	CategoryId INT FOREIGN KEY REFERENCES Categories(Id),
	Doors INT,
	Picture VARBINARY(MAX),
	Condition NVARCHAR(MAX),
	Available BIT NOT NULL
)

INSERT INTO Cars (Id, Manufacturer, Model, CategoryId, Available) VALUES
(1, 'Audi', 'R8', 1, 1),
(2, 'BMW', 'X5', 2, 0),
(3, 'Porsche', 'Cayene', 3, 1)

CREATE TABLE Employees (
	Id INT PRIMARY KEY,
	FirstName NVARCHAR(50) NOT NULL,
	LastName NVARCHAR(50) NOT NULL,
	Title NVARCHAR(100),
	Notes NVARCHAR(MAX)
)

INSERT INTO Employees (Id, FirstName, LastName) VALUES
(1, 'Christian', 'Pamidov'),
(2, 'Merrie', 'Christopher'),
(3, 'Svetlin', 'Nakov')

CREATE TABLE Customers (
	Id INT PRIMARY KEY,
	DriverLicenceNumber INT NOT NULL,
	FullName NVARCHAR(100) NOT NULL,
	Address NVARCHAR(100),
	ZIPCode INT,
	Notes NVARCHAR(MAX)
)

INSERT INTO Customers (Id, DriverLicenceNumber, FullName) VALUES
(1, 12345, 'Christian Pamidoff'),
(2, 54321, 'Merrie Christopher'),
(3, 32415, 'Svetlin Nakov')

CREATE TABLE RentalOrders(
	Id INT PRIMARY KEY,
	EmployeeId INT FOREIGN KEY REFERENCES Employees(Id),
	CustomerId INT FOREIGN KEY REFERENCES Customers(Id),
	CarId INT FOREIGN KEY REFERENCES Cars(Id),
	TankLevel INT,
	KilometrageStart INT,
	KilometrageEnd INT,
	TotalKilometrage INT,
	StartDate DATE,
	EndDate DATE,
	TotalDays INT,
	RateApplied INT,
	TaxRate INT,
	OrderStatus INT,
	Notes NVARCHAR(MAX)
)

INSERT INTO RentalOrders (Id, EmployeeId, CustomerId, CarId) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3)