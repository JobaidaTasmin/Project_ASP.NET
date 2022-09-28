--CREATE  BRANCHES TABLE--
 CREATE TABLE branches
 (
   branchId INT IDENTITY PRIMARY KEY,
   branchName NVARCHAR(30) NOT NULL,
   branchAddress NVARCHAR(100) NOT NULL
 )
GO
--CREATE  EMPLOYEES TABLE--
CREATE TABLE employees
 (
   employeeId INT IDENTITY PRIMARY KEY,
   employeeName NVARCHAR(40) NOT NULL,
   employeePhone NVARCHAR(20) NOT NULL,
   employeeEmail NVARCHAR(50) NOT NULL,
   branchId INT NOT NULL REFERENCES branches(branchId)
 )
GO
--CREATE  GURDIANS TABLE--
CREATE TABLE guardians
 (
   guardianId INT IDENTITY PRIMARY KEY,
   guardianName NVARCHAR(40) NOT NULL,
   guardianAddress NVARCHAR(100) NOT NULL,
   guardianPhone NVARCHAR(20) NOT NULL   
 )
GO
--CREATE  CHILDREN TABLE--
CREATE TABLE childrens
 (
   childrenId INT IDENTITY PRIMARY KEY,
   childrenName NVARCHAR(40) NOT NULL,
   picture NVARCHAR(150)NOT NULL,
   branchId INT NOT NULL REFERENCES branches(branchId),
   guardianId INT NOT NULL REFERENCES guardians(guardianId)  
 )
GO