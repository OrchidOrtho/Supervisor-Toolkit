CREATE TABLE [EDW].[WorkCenterSupervisor]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [WorkCenterId] INT NULL, 
    [EmployeeId] INT NULL, 
    CONSTRAINT [FK_WorkCenterSupervisor_ToWorkCenter] FOREIGN KEY ([WorkCenterId]) REFERENCES [EDW].[WorkCenter]([Id]), 
    CONSTRAINT [FK_WorkCenterSupervisor_ToEmployee] FOREIGN KEY ([EmployeeId]) REFERENCES [EDW].[Employee]([Id])
)
