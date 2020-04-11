CREATE TABLE [EDW].[WorkCenterReasonCode]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [WorkCenterId] INT NULL, 
    [ReasonCodeId] INT NULL, 
    CONSTRAINT [FK_WorkCenterReasonCode_ToWorkCenter] FOREIGN KEY ([WorkCenterId]) REFERENCES [EDW].[WorkCenter]([Id]), 
    CONSTRAINT [FK_WorkCenterReasonCode_ToReasonCode] FOREIGN KEY ([ReasonCodeId]) REFERENCES [EDW].[ReasonCode]([Id])
)
