CREATE TABLE [HXH].[HourbyHourEntry]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY, 
    [EntryDate] DATE NULL, 
    [EntryHour] INT NULL, 
    [JobId] INT NULL, 
    [EmployeeId] INT NULL, 
    [PartCount] DECIMAL(15, 6) NULL, 
    [TargetCount] INT NULL, 
    [LastUpdatedBy] INT NULL, 
    [LastUpdated] DATE NULL, 
    [OperationNo] NVARCHAR(100) NULL, 
    [EntityName] NVARCHAR(100) NULL, 
    CONSTRAINT [FK_HourbyHourEntry_ToJob] FOREIGN KEY ([JobId]) REFERENCES [EDW].[Job]([Id]), 
    CONSTRAINT [FK_HourbyHourEntry_ToEmployee] FOREIGN KEY ([EmployeeId]) REFERENCES [EDW].[Employee]([Id])
)
