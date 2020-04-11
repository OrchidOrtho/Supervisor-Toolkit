CREATE TABLE [EDW].[Employee]
(
	[Id] INT NOT NULL PRIMARY KEY,
    [FirstName] NVARCHAR(200) NULL, 
    [LastName] NVARCHAR(200) NULL, 
    [WorkdayId] INT NULL, 
	[Shift] NVARCHAR(200) NULL, 
    [WorkCenterId] INT NULL, 
    [DepartmentId] INT NULL, 
    CONSTRAINT [FK_Employee_ToWorkCenter] FOREIGN KEY ([WorkCenterId]) REFERENCES [EDW].[WorkCenter]([Id]), 
    CONSTRAINT [FK_Employee_ToDepartment] FOREIGN KEY ([DepartmentId]) REFERENCES [EDW].[Department]([Id])
)
