
/****** Object:  Table [dbo].[Branches]    Script Date: 9/17/2022 4:15:05 PM ******/

CREATE TABLE [dbo].[Branches](
	[branchId] [int] IDENTITY(1,1) NOT NULL,
	[branchName] [nvarchar](30) NOT NULL,
	[branchAddress] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[branchId] ASC
)
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Childrens]    Script Date: 9/17/2022 4:15:05 PM ******/

CREATE TABLE [dbo].[Childrens](
	[childrenId] [int] IDENTITY(1,1) NOT NULL,
	[childrenName] [nvarchar](40) NOT NULL,
	[picture] [nvarchar](150) NOT NULL,
	[branchLd] [int] NOT NULL,
	[guardianId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[childrenId] ASC
)
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Employees](
	[employeeId] [int] IDENTITY(1,1) NOT NULL,
	[employeeName] [nvarchar](40) NOT NULL,
	[employeePhone] [nvarchar](20) NOT NULL,
	[employeeEmail] [nvarchar](50) NOT NULL,
	[JoinDate] [date] NOT NULL,
	[branchId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[employeeId] ASC
)
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Guardians](
	[guardianId] [int] IDENTITY(1,1) NOT NULL,
	[guardianName] [nvarchar](40) NOT NULL,
	[guardianAddress] [nvarchar](100) NOT NULL,
	[guardianPhone] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[guardianId] ASC
)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Childrens]  WITH CHECK ADD FOREIGN KEY([branchLd])
REFERENCES [dbo].[Branches] ([branchId])
GO
ALTER TABLE [dbo].[Childrens]  WITH CHECK ADD FOREIGN KEY([guardianId])
REFERENCES [dbo].[Guardians] ([guardianId])
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD FOREIGN KEY([branchId])
REFERENCES [dbo].[Branches] ([branchId])
GO
