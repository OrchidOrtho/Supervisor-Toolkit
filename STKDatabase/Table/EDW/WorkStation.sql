CREATE TABLE [EDW].[WorkStation]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [WorkstationCode] NVARCHAR(50) NULL, 
    [WorkstationDesc] NVARCHAR(500) NULL, 
    [DepartmentId] INT NULL, 
    [WorkCenterId] INT NULL, 
    CONSTRAINT [FK_EDW.[WorkStation_ToWorkCenter] FOREIGN KEY ([WorkCenterId]) REFERENCES [EDW].[WorkCenter]([Id]), 
    CONSTRAINT [FK_EDW.[WorkStation_ToDepartment] FOREIGN KEY ([DepartmentId]) REFERENCES [EDW].[Department]([Id])
)
