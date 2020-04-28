CREATE TABLE [EDW].[JobRoute]
(
	[Id] BIGINT NOT NULL PRIMARY KEY, 
    [JobId] INT NULL,
    [OperationNo] DECIMAL(15, 6) NULL,
    [WorkCenterId] INT NULL,
    [ProductTimePerUnit] DECIMAL(15, 6) NULL, 
    [SetupTimeHours] DECIMAL(15, 6) NULL, 
    CONSTRAINT [FK_JobRoute_ToJob] FOREIGN KEY ([JobId]) REFERENCES [EDW].[Job]([Id])
)
