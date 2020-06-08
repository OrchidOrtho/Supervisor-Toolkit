CREATE TABLE [EDW].[Asset]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [AssetNo] NVARCHAR(100) NULL, 
    [AssetDesc] NVARCHAR(500) NULL,
	[AssetType] NVARCHAR(200) NULL, 
    [DepartmentId] INT NULL, 
    [WorkCenterId] INT NULL, 
    [OperationId] INT NULL, 
    CONSTRAINT [FK_Asset_ToDepartment] FOREIGN KEY ([DepartmentId]) REFERENCES [EDW].[Department]([Id]), 
    CONSTRAINT [FK_Asset_ToWorkCenter] FOREIGN KEY ([WorkCenterId]) REFERENCES [EDW].[WorkCenter]([Id])

)
