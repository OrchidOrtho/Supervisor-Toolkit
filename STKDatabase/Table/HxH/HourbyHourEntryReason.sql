CREATE TABLE [HXH].[HourbyHourEntryReason]
(
	[Id] BIGINT NOT NULL PRIMARY KEY IDENTITY, 
    [HourbyHourEntryId] BIGINT NULL, 
    [ReasonCodeId] INT NULL, 
    [Comments] NVARCHAR(500) NULL, 
    CONSTRAINT [FK_HourbyHourEntryReason_ToHourbyHourEntry] FOREIGN KEY ([HourbyHourEntryId]) REFERENCES [HXH].[HourbyHourEntry]([Id]), 
    CONSTRAINT [FK_HourbyHourEntryReason_ToReasonCode] FOREIGN KEY ([ReasonCodeId]) REFERENCES [EDW].[ReasonCode]([Id])
)
