CREATE TABLE [EDW].[WorkCenter]
(
	[Id] INT NOT NULL PRIMARY KEY,
    [WorkCenterCode] NVARCHAR(50) NULL, 
    [WorkCenterDesc] NVARCHAR(500) NULL, 
    [HxHEnabled] BIT NULL, 
    [DepartmentId] INT NULL, 
    CONSTRAINT [FK_WorkCenter_ToDepartment] FOREIGN KEY ([DepartmentId]) REFERENCES [EDW].[Department]([Id])
)
