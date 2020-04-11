CREATE TABLE [EDW].[ReasonCode]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[ReasonCode] NVARCHAR(20) NULL,
	[Description] NVARCHAR(500) NULL,
	[ReasonCodeTypeId] INT NULL, 
    CONSTRAINT [FK_ReasonCode_ToReasonCodeType] FOREIGN KEY ([ReasonCodeTypeId]) REFERENCES [EDW].[ReasonCodeType]([Id])
)
